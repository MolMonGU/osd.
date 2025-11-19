#!/bin/sh

# 리눅스 명령 실행 및 인자를 함수 내부로 전달

indef() {
	echo "받은 인자: $@"
	cmd="ls $@"
	echo "실행할 명령: $cmd"

	eval $cmd
	echo "함수 종료"
}
echo


echo "입력된 인자들: $@"
echo

indef "$@"

echo

