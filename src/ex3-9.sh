#!/bin/sh

# 팀플 관리 DB.TXT

DBTXT="DB.txt"

if [ ! -f "$DBTXT" ]; then
	touch "$DBTXT"
fi

while true
do
	echo "1. 팀원 정보 추가"
	echo "2. 토의 내용 기록"
	echo "3. 팀원 검색"
	echo "4. 토의 내용 검색"
	echo "5. 종료"
	echo "원하는 메뉴를 선택하세요"
	read choice
	echo

	case $choice in
		1)
			echo "팀원의 이름을 입력하세요:"
			read name
			echo "팀원의 기타 정보를 입력하세요:"
			read info

			echo "팀원 | 이름: $name | 정보:$info">>"$DBTXT"
			echo "팀원 정보 추가 완료"
			echo
			;;
		2)
			echo "날짜를 입력하세요(예:2025-11-18):"
			read date
			echo "토의 내용을 입력하세요:"
			read content
			echo "토의기록 | 날짜: $date | 내용: $content">>"$DBTXT"
			
			echo "토의 내용 추가 완료"
			echo
			;;
		3)
			echo "검색할 팀원 이름을 입력하세요:"
			read name
			echo "[$name] 검색 결과"
			grep "이름: $name" "$DBTXT" || echo "검색 결과가 없습니다"
			echo
			;;
		4) 
			echo "검색할 날짜를 입력하세요(예:2025-11-18):"
			read date
			echo "[$date] 수행 내용 검색 결과:"
			grep "$date" "$DBTXT" || echo "검색결과가 없습니다"
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
		
