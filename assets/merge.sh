shopt -s extglob
shopt -s nullglob
shopt -s lastpipe

header="assets/header_full.md"

header_aux="$header.aux.md"
cd ..
DATE=$(date -Idate) COMMIT=$(git rev-parse --short HEAD) envsubst < $header > $header_aux

files=$header_aux

printf '%s\0' */ | sort -zV | while read -rd '' d; do
    if [[ "$d" == "assets/" ]]; then
        continue
    fi
    d=${d::-1}
    d_aux="${d}.aux.md"
    cd "$d"
    cat "${d}.md" > "${d_aux}"
    sed -i "s/^#/##/" "${d_aux}" # Bajar todos los niveles de headers por uno
    sed -i "1i# ${d}" "${d_aux}"  # Agregar header de ejercicio
    sed -i "s/\[\(.*\)\](/\[\1\](${d}\//" "${d_aux}"  # Cambiar ruta relativa de las imagenes

    # Si existe el archivo de correcciones, agregarlo como quote
    if [ -f "$d-correcciones.md" ]; then
        echo -e "\n\n## Correcciones\n\n" >> "${d_aux}"
        sed -e 's/^/>/' "$d-correcciones.md" >> "${d_aux}"
    fi

    echo -e "\n\n\\pagebreak" >> "${d_aux}" # Agregar un salto de pagina
    cd ..
    files="${files} \"${d}/${d_aux}\""
done

echo ${files}
bash -c "pandoc --template='assets/eisvogel.tex' --listings ${files} -o 'Resueltos.pdf'"

find . -iname \*.aux.md -exec rm -rf {} \;