#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_DIR="./logs"
mkdir -p "$LOG_DIR"
LOGFILE="./logs/$0-$TIMESTAMP.log"

echo -n "Enter a first number: "
read fs

echo -n "Enter a second number: "
read ss

echo "Select a operator"

echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Exit"

read -p "Enter your choice: " choose

add(){
    Addit=$((fs+ss))
    echo "End Value: $Addit"
}

sub() {
    subt=$((fs-ss))
    echo "End Value: $subt"
}

mul() {
    Multi=$((fs*ss))
    echo "End Value: $Multi"
}

Div() {
    Divi=$((fs/ss))
    echo "End Value: $Divi"
}

if [[ $choose -eq 1 ]]; then
    add

elif [[ $choose -eq 2 ]]; then
    sub

elif [[ $choose -eq 3 ]]; then
    mul

elif [[ $choose -eq 4 ]]; then
    Div

elif [[ $choose -eq 5 ]]; then
    echo "Exiting"
    exit 0
    
fi

