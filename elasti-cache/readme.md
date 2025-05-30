# Create Serverless Cache
# Tools & Services
### Elasticache
### Redis
## Create redis serverless cache
```sh
aws elasticache create-serverless-cache --serverless-cache-name cache245 --engine redis
```
## Installing redis-cli
```sh
sudo apt-get install redis
```
## Connect to instance
```sh
redis-cli mycache-endpoint-number
```
> Connection refused, we need to connect to docker on port 6379
## Connecting to docker
dockerfile

> ![Alt text](/output-images/redis.png?raw=true "Redis works")

## Launch a simple EC2 instance using Cloudformation to interact with redis
template.yaml
```sh
chmod u+x deploy.sh
./deploy.sh
```
> ![Alt text](/output-images/ec2ss.png?raw=true "Ec2 was deployed by Cloud formation")
## 