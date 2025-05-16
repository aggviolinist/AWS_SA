## Create bucket
```sh
aws s3 mb s3://bucko-policies
```
## Giving user direct access
```sh
aws s3api put-bucket-policy --bucket= "bucko-policies" --policy= "file://policy.json"
```
## On the other account, create file
```sh
touch policy.txt
aws s3 cp policy.txt s3://bucko-policies
aws s3 ls s3://bucko-policies
```
## Clean up
```sh
aws s3 rm s3://bucko-policies/policy.txt
aws s3 rb s3://bucko-policies
```
