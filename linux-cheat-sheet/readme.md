# Linux-cheat-sheet
## Zipping file
```sh
zip -r package.zip .
zip -r package.zip sample
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