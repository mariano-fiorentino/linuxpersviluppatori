#/bin/bash


echo 'Corso Linux per Sviluppatori'
case $1 in
'help')
    echo "$0 <dir>"
    exit 1;;
*)

if [ $# -eq 0 ] || [ ! -d $1 ]; then
   echo "Specificare una cartella"
   exit 1
fi;;
esac

for EL in $(ls $1); do

    file "$1/$EL";
done;
