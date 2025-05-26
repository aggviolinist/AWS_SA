# Creating an SNS Topic using CLI
# Tools & Services
### Cloud Formation
### SNS
### Lambda
### (Serveless Application Model) SAM CLI
### Cloud Watch
## Create a template yaml file to first test our SNS topic
## Create a deploy script using bash to deploy our yaml file using CloudFormation
```sh
chmod u+x deploy_without_sam.sh
./deploy_without_sam.sh
```
It is working fine ans we have our Clouf formation and Topic
# We now want to use SAM CLI to deploy to CloudFormation
## Create the template we want to upload on  CloudFormation
```sh
template.yaml
```
## Install the SAM CLI to our bin 
```sh
./bin/aws_sam_cli_install
sam --version
sam build
```
## Create and deploy sam
```sh
chmod u+x deploy_with_sam.sh
./deploy_with_sam.sh
```
## Create a SAM build file
```sh
chmod u+x build
./build
```
![Alt text](/output-images/sam-created.png?raw=true "We have build using SAM")
Note that "yaml" does run, we need to name the file "yml"
We have cloud formation template that has also created an SNS topic
# Create a topic
```sh
chmod u+x
./publish
```
> We now confirmed that we have our message and it printed
## Confrim if the publisher is Lambda
![Alt text](/output-images/lamda-image.png?raw=true "We have build using SAM")
## Cloud Watch to check if meesage got the subscriber
![Alt text](/output-images/cloudwatch.png?raw=true "The Subscriber message on cloud watch")


