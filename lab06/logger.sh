#!/bin/bash
size=$(stat -c %s file2)
logfile=/usr/share/nginx/logs/common.log
touch file{1..4}
touch buf
while :
do 
    size=$(stat -c %s file1)
    if [ $size -gt 30720 ]; then
        lines=$(cat file1 | wc -l);
        current_date_time="`date +%Y-%m-%d_%H:%M:%S`";
        echo  "Log : $current_date_time lines: $lines" >> file2
        echo > file1
    fi
    log=$(tail -n20 $logfile)
    #echo "$log" >> file1;
   echo "$log" > buf
     sed '/[4][0-9][0-9]/!d' buf >> file3;
    sed  '/[5][0-9][0-9]/d' buf  >>  file1;
    awk '/[5][0-9][0-9]/' buf >> file4;
    sed  '/[5][0-9][0-9]/d' buf >> file1 && echo > buf;
    sleep 5

done
