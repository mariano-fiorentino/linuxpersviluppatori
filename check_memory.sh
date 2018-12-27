#!/bin/bash


MEM=$(free|grep Mem|awk '{print int($3/$2*100)}')
case $MEM in
[0-9])
  echo "Poca memoria usata";;
[1-7][0-9])
  echo "Ancora tutto bene";;
8[0-9])
  echo "Sei al limite";;
9[0-5])
  echo "Sei prorio al limite";;
*)
  echo "Memoria quasi finita";;
esac
