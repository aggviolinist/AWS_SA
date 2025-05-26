## Create a user with no permissions
## Tools & Services
### AWS IAM
### AWS STS
### AWS S3
We need to create out a new user with no permissions at all and generate out access keys
```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```
Copy the access key and secret to the credentials file and create a profile
```sh
aws configure --profile sts
```
Then add your credentials to the file
Test who you are 
```sh
aws sts get-caller-identity --profile sts
```
We are the sts-machine-user

I thought I could just edit the credentials file below but no, I need to add the profile flag
```sh
open ~/.aws/credentials
```
Checks to confirm sts has no access to s3
```sh
aws s3 ls --profile sts 
```
 > An error occurred (AccessDenied) when calling the ListBuckets operation: User: arn:aws:iam::12345678:user/sts-machine-user is not authorized to perform: s3:ListAllMyBuckets because no identity-based policy allows the s3:ListAllMyBuckets action 

## Create a role for the user using Cloud Formation
We need to create a role that will access a new resource
```sh
chmod u+x bin/deploy
./bin/deploy
```
# User Assummed_role
## Use new credentials to assume role 
```sh
aws sts assume-role --role-arn arn:aws:iam::12345678:role/my-sts-stacky-xyz --role-session-name s3-sts-sesh --profile sts
```
A temporary file was generated that will give us a session token of a user with assumed role, in my case the user is called assumed_role. This user info was given to me after I requested it
### Put the information generated inside the creds file 
```sh
open ~/.aws/credentials
```
The information is:
aws_access_key_id = abc
aws_secret_access_key = def
aws_session_token = ghi

## Lets confrim our assumed profile
```sh
aws sts get-caller-identity --profile assumed_user
```
 > arn:aws:sts::12345678:assumed-role/my-sts-stacky-StsRole-xyz/s3-sts-sesh

 ## We will now use the assumed profile to work with s3
 ### Creating a bucket
 ```sh
 aws s3 mb s3://bucko-ya-assumed-user --profile assumed_user
 ```
 ### Listing buckets
 ```sh
 aws s3 ls --profile assumed_user
 ```
 ## Clean up
 ### Delete the aws/credentials file
 ### Tear down Cloud Formation stack via Console
 ### Delete bucket
 ```sh
 aws s3 rb s3://bucko-ya-assumed-userrr
 aws s3 rb s3://sucessfulllll
 aws s3 rb s3://sucessfullll
 ```
### Delete user sts-machine-user
```sh
aws iam delete-access-key --access-key-id XYZ  --user-name sts-machine-user
# aws iam delete-user-policy --user-name sts machine user --policy-name Assumepolicy 
aws iam delete-user --user-name sts-machine-user
```


