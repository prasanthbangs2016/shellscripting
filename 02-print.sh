#!/bin/bash

echo "hello prashanth"

#multiline,\n is for newline
echo -e "Hello,\nMany thanks you realised to learn Shell script"
#o/P: Hello,
#Many thanks you realised to learn Shell script

#2lines
#echo -e "Hello,\n\nMany thanks you realised to learn Shell script"

#\t : tab space
echo -e "\tThe due date for income tax return (ITR) filing for the financial year 2021-22 or assessment year 2022-23 is July 31, 2022.
        If you have already filed the return or manage to file it before the due date,
        it's well and good. But, what happens if you fail to file the ITR before the July 31 deadline?"

#print colors
#syntax: echo -e "\e[COLOURmMessage
#echo -e "\e[COlourmMessage\e[0m --0m is meant of disabling colour
#Red 31
#green 32
#yellow 33
#blue 34
#magenta 35
#cyan 36

echo -e "\e31mHello in prashanth\e[0m"
echo -e "\e32mHello Latha\e[0m"
echo -e "\em33Hello Vihaan Tej\e[0m"



