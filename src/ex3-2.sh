#!/bin/sh

echo "y = (1/2)*x^2 를 계산합니다"

echo "계산할 x값들을 입력하세요 (예시: 3 6):"
read xlist

echo 
for x in $xlist
do 
   y=$(echo "0.5*($x * $x)" | bc)
   echo "x = $x -> y = $y"
done
