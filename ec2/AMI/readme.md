## Creating an AMI
#### AMIs are region specific and if we want to tranfer one from a region to another, we copy it.
#### We first create an AMI from our instance in the same region and then copy it to any region we want to.
## Creating an Instance
Create an instance on console.
## Create an AMI
```sh
aws ec2 create-image --instance-id i-0320e93c04869fcee --name "New-AMI-001"
```
## Copy the AMI to Another location
```sh
aws ec2 copy-image --source-region us-east-1 --source-image-id ami-08c72326357bcee8f --name "My Copied AMI" --region eu-central-1 --encrypted
```
