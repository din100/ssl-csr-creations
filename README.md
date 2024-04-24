# Streamlined SSL Certificate CSR Creation Process

## 1. Clone the Repository
Clone the dedicated folder to your local environment to begin the SSL certificate creation process effortlessly.

## 2. Navigate to the Folder
Access the cloned folder to proceed with the certificate generation.

## 3. Execute CSR Script
Run the `./csr.sh` script within the folder to generate the Certificate Signing Request (CSR) and private key. Ensure the utmost security of the generated key.

## 4. Answer Configuration Queries
While executing the script, respond to the configuration queries. For UK-based certificates, use 'GB' as the Country Name (2 letter code).

## 5. Wildcard Considerations
If you are creating a wildcard certificate, make certain to specify '*.yourdomain.com' during the CSR generation process.

## 6. WSL Compatibility (Windows Subsystem for Linux)
If you are operating on Windows with WSL, clone the folder and execute the command using the WSL path, for example:
```bash
/mnt/c/Users/pathto/csr-command-main/
```

## 7. if you using older windows servers like windows 2012 or 2016 use the command below to get the pfx file as they don't work with AES256-SHA256 encryption (default on openssl)

```bash
openssl pkcs12 -export -certpbe PBE-SHA1-3DES -keypbe PBE-SHA1-3DES -nomac -inkey domain.key -in domain.crt -out domain-legacy.pfx
```



