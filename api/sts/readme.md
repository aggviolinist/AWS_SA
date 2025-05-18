## Create a user with no permissions
We need to create out a new user with no permissions and generate out access keys
```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```
## Create a role using Cloud Formation
We need to create a role that will access a new resource
## Use new credentials to assume role