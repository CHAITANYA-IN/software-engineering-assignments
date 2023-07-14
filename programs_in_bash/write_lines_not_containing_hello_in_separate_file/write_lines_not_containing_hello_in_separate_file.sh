#!/bin/bash
cat > a.txt
grep -v "hello" a.txt > b.txt && mv b.txt a.txt