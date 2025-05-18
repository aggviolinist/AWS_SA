## Create a user with no permissions
We need to create out a new user with no permissions and generate out access keys
```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```
Copy the access key and secret to the credentials file and create a profile
```sh
aws configure --profile sts
```
Then add your credential to the file
Test who you are 
```sh
aws sts get-caller-identity --profile sts
```
We are the sts-machine-user

Alternatively we can edit the credential file to add our profile
```sh
open ~/.aws/credentials
```
Checks to confirm sts has no access to s3
```sh
aws s3 ls --profile sts 
```
<!-- An error occurred (AccessDenied) when calling the ListBuckets operation: User: arn:aws:iam::365897511972:user/sts-machine-user is not authorized to perform: s3:ListAllMyBuckets because no identity-based policy allows the s3:ListAllMyBuckets action --> -->

## Create a role using Cloud Formation
We need to create a role that will access a new resource
## Use new credentials to assume role