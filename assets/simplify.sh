cd ../$1
tail -n +14 $1.md > $1.simplified.md
sed -i "s/^#/##/" $1.simplified.md
sed -i "1i# Ejercicio ${1}" $1.simplified.md
sed -i "s/\[\](/\[\](${1}\//" $1.simplified.md