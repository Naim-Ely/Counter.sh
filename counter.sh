#!/bin/bash
input=$(ls /bin)

> letter.txt

for word in $input;
do
   letter=${word:0:1}
   if [[ "$letter" = [a-zA-Z] ]]
   then
	      sml=$(echo $letter | tr '[:upper:]' '[:lower:]')
        echo $sml >> "letter.txt"
   fi
done

alphabet=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

declare -A counter

while read -r letter;
do
	  ((counter[$letter]++))
done < "letter.txt"

for letter in ${alphabet[@]};
do
	  count=${counter[$letter]}
	  echo "$letter $count"
done
