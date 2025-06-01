# Creating a glue job
# Tools & Services
### AWS GLUE
### S3
### Create an S3 bucket
```sh
aws s3 mb s3://bucko/data
```
## Download our data from a website
```sh
curl https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv -o dataset.csv
```
## Upload our data to our bucket
```sh
aws s3 cp dataset.csv s3://bucko/data/dataset.csv
```
## Create IAM Role
```sh
aws iam create-role --role-name MyGlueServiceRole --assume-role-policy-document file://json/trust-policy.json
```
> When creating such roles, we need to create a custom trust policy to give glue access to S3

```sh
aws iam put-role-policy --role-name MyGlueServiceRole --policy-name MyS3AccessPolicy  --policy-document file://json/policy.json
```
> We upload the policy to IAM
```sh
aws iam attach-role-policy --role-name MyGlueServiceRole --policy-arn arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole
```
> Attaching the policy to the role

## Create a database
Use the Console its easier
## Create a database
Use the Console its easier
> Rememeber the s3 path should be like *s3://bucko/data/* 
> Don't set path as the csv itself e.g *s3://bucko/data/dataset.csv*

## Creating a glue crawler
```sh
aws glue create-crawler --name MyCrawlerBasic --role MyGlueServiceRole --database-name mydatabase --targets '{"S3Targets": [{"Path": "s3://blue/data/"}]}' --classifiers []
```
### Run the crawler
Via the console


