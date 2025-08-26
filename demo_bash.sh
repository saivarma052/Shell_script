#!/bin/bash

username="Varma"
filename=$3

read -p "Enter the stock name: " user
echo "username: $user"

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
else
    echo "Running as root"
fi

echo "Counting to 5:"
for i in {1..5}; do
  echo "$i"
done

function greet() {
    echo "Hello, $1!"
}
greet "ALice"

echo "Enter a number between 1 and 2:"
read num
case $num in
    1) echo "You chose option 1." ;;
    2) echo "You chose option 2." ;;
    *) echo "Invalid option." ;;
esac

if [ -e "$filename" ] && [ -d "$filename" ]; then
    echo "File exists and is a directory."
else
    echo "File does not exist or is not a directory."
fi

echo "First aurgument: $1"
echo "Second aurgument: $2"

cat nonexistent-file.txt 2> /dev/null
echo "Exit status: $?"

fruits=("apple" "banana" "cherry")
echo "Fruits: ${fruits[@]}"

declare -A fruit_colors
fruit_colors=( ["apple"]="red" ["banana"]="yellow" ["cherry"]="red" )
echo "Apple color: ${fruit_colors[apple]}"  

current_date=$(date)
echo "Current date is : $current_date"

echo "Current time is : $(date +%H:%M:%S)"
find / -name "*.txt"