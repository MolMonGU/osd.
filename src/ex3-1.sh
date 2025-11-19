#!/bin/sh

echo "첫 번째 정수를 입력하시오:"
read num1
echo "두 번째 정수를 입력하시오:"
read num2

sum=$(expr $num1 + $num2)
sub=$(expr $num1 - $num2)
mul=$(expr $num1 \* $num2)
div=$(expr $num1 / $num2)

echo "덧셈 결과: $sum"
echo "뺄셈 결과: $sub"
echo "곱셈 결과: $mul"
echo "나눗셈 결과: $div"
