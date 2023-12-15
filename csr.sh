#!/bin/bash
echo "CSR creator"
read -p "What is your domain name you want to do the CSR " domainname
mkdir $domainname
cd $domainname
openssl req -new -newkey rsa:2048 -nodes -keyout $domainname.key -out $domainname.csr