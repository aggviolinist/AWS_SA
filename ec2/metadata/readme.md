# Create IMDV1 (Not recommended)
## Create ec2 instance
Create the instance. Two key things to include is the IAM polices for SSM access and Choose IMDV1 for the metadata
## Open the SSH
```sh
sudo su ec2 -ec2-user
```
## Confirm if we can see the metadata and yes it works
```sh
curl http://169.254.169.254/latest/metadata
```
# Create IMDV2 (Recommended)
## Using the same instance
We need to have the token first
## Alternatively on the AWS cli (Not a must though)
```sh
aws ec2 modify-instance-metadata-options --instance-id xxx --http-tokens required --region us-east-1
```
## Yes here is the token 
```sh 
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
```
## Curl it and get the data
```sh
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/
```
