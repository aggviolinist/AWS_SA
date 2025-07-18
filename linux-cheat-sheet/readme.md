# Linux-cheat-sheet
## Zipping file
```sh
zip -r package.zip .
zip -r package.zip sample
```
## Finding a file
```sh
find . -name "variable.tf"
```
## Grep to find running rails services
```sh
ps aux | grep rails
grep rails
```
## Changing users
```sh
sudo su - ec2-user
```
## Reading from file
```sh
cat hello.txt
tail -f dev.log
```
## Finding ports services are running on
```sh
curl localhost:3000
curl 0.0.0.0:3000
curl 127.0.0.1:3000
wget 0.0.0.0:3000
```
> 3000 is default for development 
## Env variables
```sh
env
```
## Finding user accounts in our system
```sh
less etc/passwd
```
## How to download stuff from the internet
```sh
wget http://apache.org/dist/kafka/kafka_2.3-3.4.5.tgz
```
## Unzipping the file
```sh
tar -xzf kafka_2.3-3.4.5.tgz
```
## Editing the creds file on aws
```sh
nano ~/.aws/credentials
```
# AWS Documentation for CLI commands
> https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html
