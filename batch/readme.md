# Using Batch scheduling in AWS
## Create a dockerfile
Ensure the Docker File is named as such "dockerfile" strictly
## Run to create a docker container
```sh
docker build -t app .
```
```sh
docker ps
```
The above is used to list out just like ls 
# Create an ECR, Logging in to the ECR and creating a repo
```sh
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456
```
## Build the ecr using docker
Got this command from ECR
```sh
docker build -t square .
```
## Tagging the image to push it to repo
```sh
docker tag square:latest 12345.ecr.us-east-1.amazonaws.com/square:latest
```
## Push command to ECR in the repo
```sh
docker push 1234.ecr.us-east-1.amazonaws.com/square:latest
```
# Register Job
```sh
aws batch register-job-definition --job-definition-name square-jobo --type container --container-properties '{"image":"1234.ecr.us-east-1.amazonaws.com/square", "vcpus":1,"memory": 128 }'
```
https://docs.aws.amazon.com/cli/latest/reference/batch/register-job-definition.html#examples
## Confirm the job created on batch 

# Create Compute Environment 
Made a Fargate instance on the console, it's wayyy easier

# Create a job queue
```sh
aws batch create-job-queue --job-queue-name my-jobo-queue --state ENABLED --priority 1 --compute-environment-order '[{"order":1, "computeEnvironment": "arn:aws:batch:us-east-1:1234:compute-environment/jobo-compute"}]'
```

# Push the job
```sh
aws batch submit-job --job-name my-jobo --job-definition square-jobo --job-queue my-jobo-queue
```


