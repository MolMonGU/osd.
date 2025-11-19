#!/usr/bin/env python3
#  입력인자 2개이상 받는 파이썬 파일

import sys

print("파이썬 프로그램 시작")

if len(sys.argv) < 3:
	print("인자를 2개 이상 입력하세요")
	sys.exit(1)

print(f"입력된 인자 개수: {len(sys.argv) - 1}")

print("입력된 인자 목록:")
for i, arg in enumerate(sys.argv[1:], 1):
	print(f"{i}. {arg}")

print("프로그램 종료")
