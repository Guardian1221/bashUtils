#!/bin/bash

./_7214_grep e _7214_grep.c > _7214_grep.txt
grep e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -e "for" _7214_grep.c > _7214_grep.txt
grep -e "for" _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -i int _7214_grep.c > _7214_grep.txt
grep -i int _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -v e _7214_grep.c > _7214_grep.txt
grep -v e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -c e _7214_grep.c > _7214_grep.txt
grep -c e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -l e _7214_grep.c _7214_grep.c _7214_grep.c > _7214_grep.txt
grep -l e _7214_grep.c _7214_grep.c _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -n e _7214_grep.c > _7214_grep.txt
grep -n e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -h e _7214_grep.c > _7214_grep.txt
grep -h e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

./_7214_grep -s e _7214_grep.c > _7214_grep.txt
grep -s e _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

echo "int" > supertest.txt
echo "main" >> supertest.txt

./_7214_grep -iv int _7214_grep.c > _7214_grep.txt
grep -iv int _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt

echo "int" > supertest.txt
echo "main" >> supertest.txt

./_7214_grep -f supertest.txt _7214_grep.c > _7214_grep.txt
grep -f supertest.txt _7214_grep.c > grep.txt
diff -s _7214_grep.txt grep.txt
rm _7214_grep.txt grep.txt