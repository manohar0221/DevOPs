#!/bin/bash
name=$1
date
echo "Hi $name"
echo "this is 1st argument $1"

echo "all arguments $@"
echo "How are you!"
read ans
if [ $ans == Fine ]; then
	echo "Good to hear!"
else
	echo "oh! sorry. you will be fine"
fi
echo "How old are you?"
read age
if [ $age -gt 18 ]; then
	echo "Good! You are major"
else
	echo "Oh!. you are kid"
fi
echo "what is in your bag? show it one by one"
sleep 5
for file in *; do
	echo "this is $file"
done
echo "i feel bore!"
echo "lets play a game"
echo "guess a number that i wrote on my hand"
num=1
while [ "$num" -ne 0 ]; do
	echo "------------------------------"
	echo "common! Try it"
	echo "Enter a number:"
	read num
	
	

done
echo "superrb..! you are very intelligent"

