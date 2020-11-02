shopt -s extglob
shopt -s nullglob
shopt -s lastpipe

header="assets/header_full.md"

header_aux="$header.aux.md"
cd ..
DATE=$(date -Idate) COMMIT=$(git rev-parse --short HEAD) envsubst < $header > $header_aux

files=$header_aux

printf '%s\0' */ | sort -zV | while read -rd '' d; do
    regx='([0-9]*[.])?[0-9]+'
    if [[ $d =~ $regx ]]; then  # Si es una carpeta de ejercicio
        d=${d::-1}
        cd $d
        sed "s/^#/##/" $d.md > ${d}.aux.md # Bajar todos los niveles de headers por uno
        sed -i "1i# Ejercicio ${d}" $d.aux.md  # Agregar header de ejercicio
        sed -i "s/\[\](/\[\](${d}\//" $d.aux.md  # Cambiar ruta relativa de las imagenes

        # Si existe el archivo de correcciones, agregarlo como quote
        if [ -f $d-correcciones.md ]; then
            echo -e "\n\n## Correcciones\n\n" >> $d.aux.md
            sed -e 's/^/>/' $d-correcciones.md >> $d.aux.md
        fi

        echo -e "\n\n\\pagebreak" >> $d.aux.md # Agregar un salto de pagina
        cd ..
        files="${files} ${d}/${d}.aux.md"
    fi
done

echo ${files}
pandoc --template="assets/eisvogel.tex" --listings ${files} -o "Resueltos.pdf"

find . -iname \*.aux.md -exec rm -rf {} \;