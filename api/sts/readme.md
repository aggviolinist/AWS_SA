## Create a user with no permissions
We need to create out a new user with no permissions and generate out access keys
```sh
aws iam create-user --user-name sts-new-machine-user
aws iam create-access-key --user-name sts-new-machine-user --output table
```
Copy the access key and secret to the credentials file
```sh
aws configure
```
Then add your credential to the file
Test who you are 
```sh
aws sts get-caller-identity --profile sts
```

## Create a role using Cloud Formation
We need to create a role that will access a new resource
## Use new credentials to assume role