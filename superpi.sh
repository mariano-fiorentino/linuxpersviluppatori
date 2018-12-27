#!/bin/bash
SCALE=$(cat /dev/stdin)
echo "Hai passato in pipe un valore pari a $SCALE"
if [ ! $SCALE -gt 1 ]; then
   echo "Passare come argomento un numero maggiore di 0"
   exit 1
fi

time echo "scale=$SCALE;4*a(1)"|bc -l > /dev/null
