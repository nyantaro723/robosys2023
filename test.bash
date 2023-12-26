#!/bin/bash  
# SPDX-FileCopyrightText: 2023 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | python3 your_program.py)
[ "${out}" = 15 ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo あ | python3 your_program.py)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo | python3 your_program.py)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
