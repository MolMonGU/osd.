#!/bin/sh

# DB 폴더 확인 후 파일 생성, 압축하기

if [ -d "./DB" ]; then
	echo "DB 폴더가 이미 존재합니다"
else	
	echo "DB 폴더를 생성합니다"
	mkdir DB

fi
echo

echo "DB 폴더 안에 5개의 파일을 생성합니다"
for i in 1 2 3 4 5
do
	echo "file${i}.txt" > DB/file${i}.txt
done
echo "파일 생성 완료"
echo


echo "DB 폴더를 압축합니다"
tar -czf db_files.tar.gz DB
echo "압축 완료"
echo

# train 폴더 생성
if [ -d "./train" ]; then
	echo "train 폴더가 이미 존재합니다"
else
	echo "train 폴더를 생성합니다"
	mkdir train
fi
echo

echo "train 폴더에 DB 파일 링크를 생성합니다"

for i in 1 2 3 4 5
do 
	ln -s ../DB/file${i}.txt train/file${i}.txt
done

echo "링크 생성 완료"

