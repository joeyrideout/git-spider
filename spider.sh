file=.git/HEAD
logfile="spider.log"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
wgetargs="-e robots=off --no-check-certificate --spider --tries=1 --timeout=5 --max-redirect 0"
while read p; do
  url=http://$p/$file
  wget $url $wgetargs >> $logfile 2>> $logfile
  if [[ $? != 0 ]]
  then
    echo "${green}$url not found${reset}"
    url=https://$p/$file
    wget $url $wgetargs >> $logfile 2>> $logfile
    if [[ $? != 0 ]]
    then
      echo "${green}$url not found${reset}"
    else
      echo "${red}$url found${reset}"
    fi
  else
    echo "${red}$url found${reset}"
  fi
done < targets.txt
