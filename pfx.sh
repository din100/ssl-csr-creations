#!/bin/bash
echo "PFX creator"
read -p "What is your domain name you want to do the pfx file " domainname
echo "make sure you have the key file and certificate file(crt) on the same folder as running this script"

openssl pkcs12 -export -out $domainname.pfx -inkey $domainname.key -in $domainname.crt