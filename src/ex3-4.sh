#!/bin/sh
# 5가지 기능이 구현되어있는 프로그램

scorelist=""
def_avg(){
	total=0
	count=0
	for s in $scorelist
	do
		total=$(expr $total + $s)
		count=$(expr $count + 1)
	done
	if [ $count -eq 0 ]; then
		echo 0
	else
		expr $total / $count
	fi
}

def_gpa(){
	avg=$1
	if [ $avg -ge 90 ]; then
		echo "A(4.0)"
	elif [ $avg -ge 80 ]; then
		echo "B(3.0)"
	elif [ $avg -ge 70 ]; then
		echo "C(2.0)"
	elif [ $avg -ge 60 ]; then
		echo "D(1.0)"
	else
		echo "F(0.0)"
	fi
}	
while true
do
 	 echo "1번. 과목 성적 추가"
	 echo "2번. 입력된 모든 점수 보기"
	 echo "3번. 평균 점수 확인"
	 echo "4번. 평균 등급(GPA) 변환"
	 echo "5번. 종료"
	 echo "원하는 메뉴를 선택하세요"
	 read choice
	 echo
	 case $choice in
		1)
			echo "추가할 점수를 입력하세요:"
			read newscore
			if [ "$newscore" -ge 0 ] 2>/dev/null  &&  [ "$newscore" -le 100 ]; then
				scorelist="$scorelist $newscore"
				echo "점수 $newscore 추가 완료"
			else
				echo "0~100 사이의 숫자를 입력하시오"
			fi
			;;
		2)
			if [ -z "$scorelist" ]; then
				echo "입력된 점수가 없습니다"
			else
				echo "입력된 모든 점수: $scorelist"
			fi
			;;
		3)
			avg=$(def_avg)
			echo "평균 점수: $avg"
			;;
		4)
			avg=$(def_avg)
			gpa=$(def_gpa $avg)
			echo "평균 점수: $avg"
			echo "해당 GPA: $gpa"
			;;
		5)
			echo "프로그램을 종료합니다"
			break
			;;
		*)
			echo "1부터 5까지의 숫자를 입력하세요"
			;;
	esac
	echo
done
