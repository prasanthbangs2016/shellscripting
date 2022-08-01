#bin/bash
#gold colour

source component/common.sh
#removing log for every run to have latest run log
rm -rf /tmp/roboshop.log

HEAD "Setup mongodb yum repofile"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT $?

HEAD "Install Mongo\t\t"
yum install -y mongodb-org &>>/tmp/roboshop.log
STAT $?

HEAD "update mongodb config"
sed -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
STAT $?

HEAD "start Mongo service\t"
systemctl enable mongod
systemctl restart mongod
STAT $?

HEAD "Download database schema from github"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>/tmp/roboshop
STAT $?

HEAD "extract download archive"
cd /tmp
unzip mongodb.zip
STAT $?

HEAD "Load schema"
cd mongodb-main
mongo < catalogue.js  &>>/tmp/roboshop && mongo < users.js &>>/tmp/roboshop
STAT $?



