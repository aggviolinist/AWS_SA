# AWS SQS
# CloudFormation
# Using CLI
## Creat template to create our SQS
template.yaml
## Create deploy script
```sh
chmod u+x deploy.sh
./deploy.sh
```
## Send the message to SQS
```sh
chmod u+x send.sh
./deploy.sh
```
## Receive message from SQS
```sh
chmod u+x receive.sh
./deploy.sh
```
>![Alt text](/output-images/sqs.png?raw=true "The SQS was able to receive the message")

# Using SDK(ruby)