#bin/bash
#gold colour

source component/common.sh
#removing log for every run to have latest run log
rm -rf /tmp/roboshop.log

#docker approach
HEAD "Installing nodejs\t\t\t"
yum make gcc-c++ -y &>>/tmp/roboshop.log
node --version &>>/tmp/roboshop.log
npm --version &>>/tmp/roboshop.log
if [ $? -eq 0 ]; then
  echo "Nodejs already installed hence skipping" &>>/tmp/roboshop.log
  STAT $?
else
  curl -L https://npmjs.org/install.sh | sudo sh &>>/tmp/roboshop.log
  STAT $?
fi

HEAD "Adding Roboshop app user"
id roboshop &>>/tmp/roboshop.log
if [ $? -eq 0 ]; then
  echo "User is already there,so skipping the user creation" &>>/tmp/roboshop.log
  STAT $?
else
  useradd roboshop &>>/tmp/roboshop.log
  STAT $?
fi

HEAD "Download catalogue code from github"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract the catalogue code"
cd /home/roboshop && rm -rf catalogue && unzip /tmp/catalogue.zip &>>/tmp/roboshop.log && mv catalogue-main catalogue

STAT $?

HEAD "Install nodejs dependencies"
cd /home/roboshop/catalogue && npm install --unsafe-perm -g now &>>/tmp/roboshop.log
STAT $?

HEAD "Fix Permissions to app content"
chown roboshop:roboshop /home/roboshop -R
STAT $?
