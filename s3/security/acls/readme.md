## Create bucket
```sh
aws s3 mb s3://bucko-policies
```

## Turn off Block Public Access for ACLs
```sh
aws s3api put-public-access-block --bucket "bucko-policies" 
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"  
```
## Print the Access block on the cli
```sh
aws s3api get-public-access-block --bucket= "bucko-policies"
```

## Change Bucket Policies so we are able to edit the ACLs on the AWS UI
```sh
aws s3api put-bucket-ownership-control --bucket= "bucko-policies" --ownership-controls= "Rules=[{ObjectOwnerPreferred}]"
```
## We then need to add grantee(the other account we want to give access)

## Change ACLs to allow accesss for user in another AWS Account
## First get cannnonical id of the other User
```sh
aws s3api list-buckets --query="Owner.ID" --output="text"
```
## Give then access
```sh
aws s3api put-bucket-acl --bucket="bucko-policies" --access-control-policy="file://policy.json"
```

## Create file
```sh
touch policy.txt
aws s3 cp policy.txt s3://bucko-policy
aws s3 ls s3://bucko-policy
```

## Clean up
```sh
aws s3 rm s3://bucko-policies/policy.txt
aws s3 rb s3://bucko-policies
```