# Creating an RDS Database with a username and a password using CloudFormation
> We can use this database with an EC2 instance to log in 
> We just need to create an EC2 then SSH into it
## Tools & Services
### CloudFormation
### Secrets Manager
### RDS(postgress)

## Create an RDS subnet for PSQL
On the console
## Create a CFN template
```sh
template.yaml
```
>I got an issue on the Postgress DB engine. The article below helped me takle the version problem
>https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RDS_Fea_Regions_DB-eng.Feature.RDSProxy.html
>Older versions took a decimal but now its *15*
>Use the VPC's Id and subnet

## Deploy the template
```sh
touch deploy.sh
chmod u+x deploy.sh
./deploy.sh
```

## On the Secret Manager we have our details
>![Alt text](/output-images/rdsss.png?raw=true "We can use these creds to log into the RDS Instance")

