#!/bin/bash  
# SPDX-FileCopyrightText: 2023 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = "Total: 15\nCount: 5\nAverage: 3.0" ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "Error converting 'あ' to integer\nNG at Line 17\nTotal: 0\nCount: 1\nAverage: 0.0" ] || ng $LINENO

out=$(echo | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "Total: 0\nNG at Line 21\nNG at Line 22\nTest Failed\nCount: 0" ] || ng $LINENO

[ "$res" = 0 ] && echo "OK" || echo "Test Failed"

