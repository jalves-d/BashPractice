#! /bin/bash

echo "############################################"
date
ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
        echo "Httpd process is running."
else
        echo "Httpd process is not running."
        echo "Starting process"
        systemctl start httpd
        if [ $? -eq 0 ]
        then
                echo "Process started !"
        else
                echo "Process starting failed !"
        fi
fi
echo

