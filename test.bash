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
expected="Total: 15
Count: 5
Average: 3.0"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" = "${expected}" ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo あ | ./plus)
expected="NG at Line 13
Error converting 'あ' to integer
Total: 0
Count: 1
Average: 0.0"
echo "out: ${out}"
echo "expected: ${expected}"
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "${expected}" ] || ng $LINENO

out=$(echo | ./plus)
expected="NG at Line 18
Total: 0
NG at Line 21
NG at Line 22
Test Failed
Count: 0"
echo "out: ${out}"
echo "expected: ${expected}"
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "${expected}" ] || ng $LINENO

[ "$res" = 0 ] && echo "OK" || echo "Test Failed"

