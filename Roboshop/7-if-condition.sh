#!/bin/basha
<<'###BLOCK-COMMENT'
there are 3 types of if's
what is condition..?
it is all about validation,when it

1-simple if:
============
if it is true it will execute the command

syntax:
if [ expression ]
then
  commands
fi

example:
========
HEAD() {
  echo -n -e "\e[1m $1 \e[0m \t\t... "
}

#exit status
STAT() {
  if [ $1 -eq 0 ]; then
    echo -e "\e[1;32m done\e[0m"
  else
    echo -e "\e[1;31m fail\e[0m"
    echo -e "\t \e[1;33m check the log file for more details... Log file: /tmp/roboshop.log\e[0m"
    exit 1 #if something it will stop here
  fi
}

2-if else
============
if it is it true will execute the command
if it is it false will execute the command

syntax:
if [ expression ]
then
  commands
else
  commands
fi

3-else if
=========
validating multiple condition.
if it is it true will execute the command
if it is it false will execute the command

syntax:
if [ expression1 ]
then
  command1
elif [ expression2 ]
then
  command2
elif [ expression3]
then
  command3
else
  command4
fi

expression
=============
string comparision: =, ==, !=, -z

ex:
[ "abc" == "ABC"]
[ "abc" =! "ABC"]
[ -z "$USER" ]

example:
========
#!/bin/bash
read -p 'Enter Username to add: ' username

#validate user exist or no,if available dont add

if [ "$username" == "root" ]; then
  echo "Hey, User $username is admin user"
else
  echo "Hey, user $username is normal user"
  #useradd tej
fi

Number comparision: -eq -ne -gt -ge -lt -le
[ 1 -eq 2 ]
[ 2 -ne 3 ]
[ 2 -gt 3 ]
[ 2 -ge 3 ]
[ 2 -lt 3 ]
[ 2 -le 3 ]

file comparision:
    operators:
[ -f file ]
[ !-f file ]

example:
========
#!/bin/bash
read -p 'Enter filename: ' filename

#validate filename exist or no,if available dont add

if [ -f "$filename ]; then
  echo "file exists $filename"
else
  echo "not exist $filename"
  #useradd tej
fi



###BLOCK-COMMENT


# note : always try to use variable inside quotes in expressions.