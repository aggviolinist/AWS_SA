## Create a bucket
```sh
aws s3 mb s3://enkryption
```
## Create a file and put object with encryption SS3-s3 
```sh
echo "this file encrypted with ss3-s3" > hello.txt
aws s3 cp hello.txt s3://enkryption
```
## Put object with encryption of ss3-kms
