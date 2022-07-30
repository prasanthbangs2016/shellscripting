#bin/bash
#gold colour

source component/common.sh
#removing log for every run to have latest run log
rm -rf /tmp/roboshop.log

#docker approach
HEAD "Installing Nginx\t\t\t"
yum install nginx -y &>>/tmp/roboshop.log
#script will fail if run as below
#yum install Nginx -y &>>/tmp/roboshop.log
STAT $?

HEAD "Downloading frontend application code\t"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Delete nginx default html files\t"
rm -rf /usr/share/nginx/html/*
STAT $?

HEAD "Extract frontend applicatio code\t"
unzip -d /usr/share/nginx/html /tmp/frontend.zip &>>/tmp/roboshop.log
mv /usr/share/nginx/html/frontend-main/* /usr/share/nginx/html &>>/tmp/roboshop.log
mv /usr/share/nginx/html/static/* /usr/share/nginx/html/ &>>/tmp/roboshop.log
STAT $?

HEAD "Update nginx configuration\t\t"
mv /usr/share/nginx/html/localhost.conf /etc/nginx/default.d/roboshop.conf &>>/tmp/roboshop.log
STAT $?

HEAD "start nginx\t\t\t\t"
systemctl restart nginx &>>/tmp/roboshop.log
systemctl enable nginx &>>/tmp/roboshop.log
STAT $?
