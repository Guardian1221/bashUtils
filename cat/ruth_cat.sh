#!/bin/bash

./_7214_cat _7214_cat.c >> _7214_cat.txt
cat _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt

./_7214_cat -b _7214_cat.c >> _7214_cat.txt
cat -b _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt

./_7214_cat -e _7214_cat.c >> _7214_cat.txt
cat -e _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt

./_7214_cat -n _7214_cat.c >> _7214_cat.txt
cat -n _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt

./_7214_cat -s _7214_cat.c >> _7214_cat.txt
cat -s _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt

./_7214_cat -t _7214_cat.c >> _7214_cat.txt
cat -t _7214_cat.c >> cat.txt
diff -s _7214_cat.txt cat.txt
rm _7214_cat.txt cat.txt