# We first zip the code, package it in our s3 bucket. After this we deploy it to lambda
# Tools
## Cloud Formation
## Serveless Application Model(SAM)
## s3
## Lambda
## Create the template
template.yml
## Create the python code
```sh
functions/functions.py
```
## Create our package bash script
```sh
touch package.sh
```
## Make our s3 bucket
```sh
aws s3 mb s3://bucket45434
```
## Link our bucket to sam
samconfig.toml
## Confirm if our template is error free
```sh
./lint.sh
```
## Use sam 
```sh
sam build
```
## Packaging it
```sh
./bin/package
```
> ![Alt text](/output-images/packe.png?raw=true "Output after packaging it on CLI")
> ![Alt text](/output-images/s3packe.png?raw=true "Output after packaging it on S3")
## Deploying to Cloudformation
```sh
./bin/deploy.sh
```
