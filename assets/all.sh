shopt -s extglob
shopt -s nullglob
shopt -s lastpipe

cd ..

printf '%s\0' */ | sort -zV | while read -rd '' d; do
    if [[ "$d" == "assets/" ]]; then
        continue
    fi
    echo $d
    d=${d::-1}
    make EJ="$d" > /dev/null  &
done

wait
