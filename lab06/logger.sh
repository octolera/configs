#!/bin/bash
size=$(stat -c %s file2)
logfile=.logs
touch file{1..4}
touch buf
while :
do 
    size=$(stat -c %s file1)
    if [ $size -gt 307200 ]; then
        lines=$(cat file1 | wc -l);
        current_date_time="`date +%Y-%m-%d_%H:%M:%S`";
        echo  "Log : $current_date_time lines: $lines" >> file2
        echo > file1
    fi
    log=$(cat $logfile)
    echo "$log" >> file1 && echo > logfile;
    sed '/[4][0-9][0-9]/!d' file1 >> file3
    sed  '/[5][0-9][0-9]/d' file1 >> buf && mv buf file1 && echo > buf;
    awk '/[5][0-9][0-9]/' file1 >> file4;
    sed  '/[5][0-9][0-9]/d' file1 >> buf && mv buf file1 && echo > buf;
    echo "cycle"
    sleep 5

done
