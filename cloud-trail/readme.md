# Analysing trails on Cloud trail
# Tools
### CloudTrail
### S3
## Create a bukcet
```sh
aws s3 mb s3://obako
```
## Creat a bucket policy
This policy is important since we want to give permission to s3 to receive cloud trails
```sh
bucketpolicy.json
```
## Uploading the policy to s3
```sh
aws s3api --put-bucket-policy --bucket obako --policy file://bucketpolicy.json
```
## Create a trail
```sh
aws cloudtrail create-trail --name MyTrail --s3-bucket-name obako ---region us-east-1
```
