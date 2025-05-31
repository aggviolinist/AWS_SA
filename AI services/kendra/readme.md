# We will use Kendra to analyse our pdf 
# Tools
### AWS Kendra
### AWS IAM
### S3 
## I first created an index role
```sh
index-policy.json
```
1. Create a custom policy that allows us access to cloud watch logs
2. I learnt that I can create a "Custom trust policy", One that I can enable others to perform actions in my IAM account.
> I was used to the normal way of just using AWS Services
> Kendra doesn't use bucket policies, instead it uses roles. Kendra needs to be a trusted member

## Create Kendra index
```sh
aws kendra create-index --edition DEVELOPER_EDITION --name my-index --description "My index" --region us-east-1 --role-arn arn:aws:iam::123456:role/KendraIndexRole
```
## Create bucket
```sh
aws s3 mb s3://bucko --region us-east-1
```
## I need to create a second role to give access to S3 as a data source for Kendra
```sh
data-source-policy.json
```
1. Create the policy
2. Create a custom trust policy using the above policy
> This policy gives Kendra access to s3 as its main data source
## Create a data source
```sh
aws kendra create-data-source --index-id 12345gfdsdfga3 --name my-data-source --role-arn arn:aws:iam::12345:role/KendraIndexRole --type S3 --configuration '{"S3Configuration":{"BucketName": "bucko"}}' --region us-east-1
```

## Upload to S3 bucket
```sh
# aws s3api cp GOT.pdf s3://bucko
cd GOT_split_pages/
aws s3 sync . s3://bucko
```

## SYNC the data
```sh
aws kendra start-data-source-sync-job --id 12345sd --index-id 6d5ersdf --region us-east-1
```

## Query our data using Kendra 
> We need to have data from different sources
> Kendra needs to do an analysis and give us an answer from the differenct sources we have given it
```sh
aws kendra query --index-id 12345ffv --query-text " Littlefinger sighed. “I fear I did forget, my lord. Pray forgive me. For a moment I did not 
remember that I was talking to a Stark.” His mouth quirked. “So it will be Stannis, and war?” 
“It is not a choice. Stannis is the heir." --region us-east-1
```
## Output
![Alt text](/output-images/kendra.png?raw=true "Kendra has retrieved the exact pdf in Game of thrones where Little finger said that war was not a choice")