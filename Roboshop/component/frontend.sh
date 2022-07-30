#bin/bash
#gold colour

source component/common.sh
#removing log for every run to have latest run log
rm -rf /tmp/roboshop.log

#docker approach
HEAD "Installing Nginx"
yum install nginx -y &>>/tmp/roboshop.log
#script will fail if run as below
#yum install Nginx -y &>>/tmp/roboshop.log

STAT $?