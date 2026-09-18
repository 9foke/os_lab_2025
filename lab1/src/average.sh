#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Нет аргументов"
    exit 1
fi

sum=0
for num in "$@"; do
    sum=$((sum + num))
done

# awk для деления с плавающей точкой
avg=$(awk -v s="$sum" -v c="$#" 'BEGIN { printf "%.2f", s / c }')

echo "Количество: $#"
echo "Среднее арифметическое: $avg"
