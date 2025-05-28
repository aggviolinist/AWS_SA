# This method, I use containers to deploy lambda code
## Tools
### S3
### CloudFormation
### Lambda
### Docker
### Serverless Application Model (SAM)
## Create a docker file that will hold our image
```sh
touch dockerfile
```
## Create a clouformation template to upload the code
```sh
touch template.yml
```
## Create a samconfig file to link our bucket to SAM
```sh
touch samconfig.toml
``` 
## Create a bootstrap file to deploy our image to ecr
```sh
touch bootstrap
./bootstrap
```
## In AWS ECR, we need to authenticate into the registry
```sh
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 1234.us-east-1.amazonaws.com
```
> ![Alt text](/output-images/ecr.png?raw=true "Output after logging in to ecr")

## Build the using SAM and docker
```sh
sam build
```
## Package the container to ecr
```sh
./bin/package.sh
```
## Build SAM
```sh
./bin/deploy
```
## Random users generated on lambda
![Alt text](/output-images/rand.png?raw=true "Users generated on lambda")


