#bin/bash
#gold colour

source component/common.sh

#docker approach
HEAD "Installing Nginx"
yum install ngi1x -y &>>/tmp/roboshop.log

STAT $?