#!/bin/sh

echo "점수 값을 입력받아 등급으로 변환하는 셀"

echo "점수들을 2개 이상 입력하세요 (예: 95 100 70):"
read scorelist

total=0
count=0

for s in $scorelist
do
    if [ "$s" -ge 90 ]; then
	echo "$s점은 A등급"
    else
	echo "$s점은 B등급"
    fi
    
    total=$(expr $total + $s)
    count=$(expr $count + 1)
done

avg=$(expr $total / $count)

if [ "$avg" -ge 90 ]; then
   echo "평균 등급: A"
else
   echo "평균 등급: B"
fi
