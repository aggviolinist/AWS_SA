# Tools & Services
### YQ
### STS
### IAM
## I am using the "Cool User" I created from the create-template-policies yaml file
I confirmed using
```sh
aws sts get-caller-identity --profile iam-policies
```
## Install yq to convert yaml to json
```sh
breww install yq
```
## Convert yaml to json
```sh
yq -o json policy.yaml > policy.json
```
## Bash script to make our life easier
```sh
./update
```

## Create IAM policy
```sh
aws iam create-policy --policy-name my-fun-policy --policy-document file://policy.json
```

## On our bash script, we first create policy versions (this didn't work) 

## Attach policy to IAM Cool user
```sh
aws iam attach-user-policy --policy-arn arn:aws:iam::365897511972:policy/my-fun-policyyy --user-name my-cool-user 
```

