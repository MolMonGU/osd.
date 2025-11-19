#!/bin/sh

# MYENV 환경변수 등록과 해제

echo "환경변수 등록"
echo 'export MYENV="Hello Shell"' >> ~/.bashrc

source ~/.bashrc

echo "현재 MYENV 값: $MYENV"
echo "터미널을 새로 열거나 다른 셀에서도 값이 유지됩니다"

sed -i '/export MYENV="Hello Shell"/d' ~/.bashrc
echo "MYENV 환경변수가 해제되었습니다"



