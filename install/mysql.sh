#!/bin/bash

/usr/bin/mysqld_safe &
sleep 10

mysqladmin -u root password password
mysqladmin -u root -ppassword reload

mysqladmin -u root -ppassword create stash
echo "GRANT ALL ON stash.* TO stashuser@'localhost' IDENTIFIED BY 'password'; flush privileges; " | mysql -u root -ppassword
sleep 10 

echo  "Stash User and Databse created..."

exit 0