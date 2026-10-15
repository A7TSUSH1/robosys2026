#!/usr/bin/python3
import sys

x = 0                     #もともと0.0だったのを0に変更
for line in sys.stdin:
    try:
        x += int(line)    #intは文字列を整数に（失敗すると例外発生）
    except ValueError:    #第3回で見たエラーの名前
        x += float(line)

print(x)
