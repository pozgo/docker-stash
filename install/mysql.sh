#!/bin/bash

/usr/bin/mysqld_safe &
sleep 10

mysqladmin -u root password password
mysqladmin -u root -ppassword reload

echo "CREATE DATABASE stash CHARACTER SET utf8 COLLATE utf8_bin;" | mysql -u root -ppassword
echo "Stash Database created"

echo "GRANT ALL ON stash.* TO stashuser@'localhost' IDENTIFIED BY 'password'; flush privileges; " | mysql -u root -ppassword
sleep 10 

echo  "Stash User and Databse created..."

exit 0