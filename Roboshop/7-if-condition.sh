#!/bin/basha
<<'###BLOCK-COMMENT'
there are 3 types of if's
what is condition..?
it is all about validation,when it

1-simple if:
if it is true it will execute the command

syntax:
if [ expression ]
then
  commands
fi

2-if else
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

###BLOCK-COMMENT

#simple if
