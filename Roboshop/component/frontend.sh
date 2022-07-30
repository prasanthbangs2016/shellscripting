#bin/bash
#gold colour
echo -e "\e[1m""----------------------------------"
echo -e UnInstalling Frontend
echo -e "----------------------------------\e[0m"

yum remove nginx -y &>>/tmp/roboshop.log

echo -e "\e[1m""----------------------------------"
echo -e "\e[1;32mSUCCESS"
echo -e "----------------------------------\e[0m"
