#bin/bash
#gold colour

source component/common.sh

#docker approach
HEAD "Installing Nginx"
yum install nginx -y &>>/tmp/roboshop.log

STAT $?