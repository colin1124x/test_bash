#! /bin/bash

if [[ -o nounset ]]; then
  arg=-s
else
  arg=-u
fi

shopt -s -o nounset

declare -i Num=0
declare -i i
declare -i cnt


while [[ ${Num:-0} -lt 2 ]]; do
  read -p "please enter a int over then \"2\": " Num
done

i=2
echo -n $Num '= '
while ((Num>i)); do

  cnt=0
  ((tmp=Num%i))
  while [[ $tmp -eq 0 ]]; do
    ((Num/=i))
    ((cnt++))
    ((tmp=Num%i))
  done

  if [[ $cnt -gt 0 ]]; then
    echo -n $i
    [ $cnt -gt 1 ] && echo -n '^'$cnt
    [ $Num -gt 1 ] && echo -n ' * '
  fi

  ((i>=3 ? i+=2 : i++))

done

shopt $arg -o nounset

echo
