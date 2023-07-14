#!/bin/bash
num=${1%.*}
echo "define f (x) {
if (x <= 1) return (1);
return (f(x-1) * x);
} f($num)" | BC_LINE_LENGTH=10000 bc
