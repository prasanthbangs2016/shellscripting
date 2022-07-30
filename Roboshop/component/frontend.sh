#bin/bash
#gold colour

source component/common.sh

#docker approach
HEAD "Installing Nginx"
#yum install nginx -y &>>/tmp/roboshop.log
echo -e "\e[32mDONE\e[0m"

STAT $?