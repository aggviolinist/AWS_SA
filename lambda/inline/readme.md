# Upl
# Tools
## Lambda
## Serverless Application Model (SAM)
## CloudFormation
# Creating a lambda inline function
## Create a template file
template.yml with lambda inline code
## We are using SAM
```sh
./bin/aws_sam_cli_install.sh
sam build
./bin/deploy.sh
```
> I noted that sam works by uploading our template.yaml to .aws-sam and then that file is what it uploads to cloud formation
## Install cfn lint
```sh
brew install cfn-lint
```
> We use lint to show us if there are errors with our cloudformation
> ![Alt text](/output-images/lambda.png?raw=true "The output on lambda after testing")
