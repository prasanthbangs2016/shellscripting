HEAD() {
  echo -n -e "\e[1m $1 \e[0m \t\t... "
}

#exit status
STAT() {
    if [ $1 -eq 0]; then
      echo -e "\e[1;32m done\e[0m"
    else
      echo -e "\e[1;31m fail\e[0m"
      echo -e "\t check the log file for more details... Log file: /tmp/roboshop.log\e[0m"
      exit 1
    fi
    
}
