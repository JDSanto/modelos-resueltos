shopt -s extglob
shopt -s nullglob
shopt -s lastpipe

files="assets/header_full.md"
cd ..

printf '%s\0' */ | sort -zV | while read -rd '' d; do
    regx='([0-9]*[.])?[0-9]+'
    if [[ $d =~ $regx ]]; then  # Si es una carpeta de ejercicio
        d=${d::-1}
        cd $d
        sed "s/^#/##/" $d.md > ${d}.simplified.md # Bajar todos los niveles de headers por uno
        sed -i "1i# Ejercicio ${d}" $d.simplified.md  # Agregar header de ejercicio
        sed -i "s/\[\](/\[\](${d}\//" $d.simplified.md  # Cambiar ruta relativa de las imagenes

        # Si existe el archivo de correcciones, agregarlo como quote
        if [ -f $d-correcciones.md ]; then
            echo -e "\n\n## Correcciones\n\n" >> $d.simplified.md
            sed -e 's/^/>/' $d-correcciones.md >> $d.simplified.md
        fi

        echo -e "\n\n\\pagebreak" >> $d.simplified.md # Agregar un salto de pagina
        cd ..
        files="${files} ${d}/${d}.simplified.md"
    fi
done

pandoc --template="assets/eisvogel.tex" --listings ${files} -o "Resueltos.pdf"

find . -iname \*.simplified.md -exec rm -rf {} \;
