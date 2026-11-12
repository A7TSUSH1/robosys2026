#!/bin/bash
# SPDX-FileCopyrightText: 2026 Atsushi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

### NORMAL INPUT ###
# 1から5の入力
out=$(seq 1 5 | ./stat_calc | grep "Mean:" | awk '{print $2}')
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "3.0000" ] || ng "$LINENO"

out=$(seq 1 5 | ./stat_calc | grep "Count:" | awk '{print $2}')
[ "${out}" = "5" ] || ng "$LINENO"

### STRANGE INPUT ###
# 文字列の入力（エラーになるべき）
out=$(echo "あ" | ./stat_calc 2> /dev/null)
[ "$?" = 1 ] || ng "$LINENO"

# 空の入力（エラーになるべき）
out=$(echo "" | ./stat_calc 2> /dev/null)
[ "$?" = 1 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
