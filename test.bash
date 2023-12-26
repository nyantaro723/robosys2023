#!/bin/bash  
# SPDX-FileCopyrightText: 2023 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | python3 plus)
[ "${out}" = "Total: 15\nCount: 5\nAverage: 3.0" ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo あ | python3 plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "Error converting 'あ' to integer\nNo valid input numbers." ] || ng $LINENO

out=$(echo | python3 plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "Error converting '' to integer\nNo valid input numbers." ] || ng $LINENO

[ "$res" = 0 ] && echo "OK" || echo "Test Failed"
exit $res
