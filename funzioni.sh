#!/bin/bash
GLOBALE='globale'
LOCALE='globale'
function printCiao {
   LOCALE='locale'
   GLOBALE=$GLOBALE"testo"
   echo 'Ciao '$1;
   return 3
}



OUT=$(printCiao $2)

echo $GLOBALE
echo $LOCALE
echo $OUT
