## Create a bucket
```sh
aws s3 mb s3://enkryption
```
## Create a file and put object with encryption SS3-s3 
```sh
echo "this file encrypted with ss3-s3" > hello.txt
aws s3 cp hello.txt s3://enkryption
```
# Put object with encryption of ss3-kms
```sh
aws s3api put-object --bucket="enkryption" --key="hello.txt" --body="hello.txt" --server-side-encryption "aws:kms" --ssekms-key-id "91dc6c8b-f166-4242-97ae-ea9b1c7af65a"
```
Note: we got the kms id from AWS KMS managed key

## Confirm if the new KMS key can access the file in the bucket by downloading it, and yes we can and we can also decrypt it
```sh
aws s3 cp s3://enkryption/hello.txt hello-world.txt
```
# Put object with SSE-C via aws s3 
```sh
openssl rand -out ssec.key 32
aws s3 cp hello-world.txt s3://enkryption/hello-world.txt -sse-c AES256 --sse-c-key fileb://ssec.key
```

## Downloading that file to our local machine
```sh
aws s3 cp s3://enkrpytion/hello-world.txt hey-you.txt --sse-c AES256 --sse-c-key fileb://ssec.key
```
## Clean Up
```sh
aws s3 rm s3://enkryption/hello.txt
aws s3 rb s3://enkryption
```