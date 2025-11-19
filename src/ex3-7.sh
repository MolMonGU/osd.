#!/bin/sh

# 리눅스 시스템 상태 확인 메뉴

while true
do
	echo "<시스템 상태 확인>"
	echo "1. 사용자 정보 확인"
 	echo "2. CPU 사용률 확인"
	echo "3. 메모리 사용량 확인"
	echo "4. 디스크 사용량 확인"
	echo "5. 종료"
	echo "원하는 메뉴를 선택하세요"
	read choice
	echo

	case $choice in
		1)
			echo "현재 로그인 사용자 정보"
			who
			echo "전체 사용자 계정 수: $(who | wc -l)"
			echo
			;;
		2)
			echo "CPU 사용률 확인"
			echo "현재 CPU 상태:"
			mpstat 1 1 2>/dev/null || top -bn1 | grep "Cpu(s)"
			echo
			;;
		3)
			echo "메모리 사용량 확인"
			free -h
			echo
			;;
		4)
			echo "디스크 사용량 확인"
			df -h
			echo
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
