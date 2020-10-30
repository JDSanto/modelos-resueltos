shopt -s extglob
shopt -s nullglob
shopt -s lastpipe

cd ..

printf '%s\0' */ | sort -zV | while read -rd '' d; do
    regx='([0-9]*[.])?[0-9]+'
    if [[ $d =~ $regx ]]; then  # Si es una carpeta de ejercicio
        echo $d
        d=${d::-1}
        make EJ=$d > /dev/null  &
    fi
done

wait