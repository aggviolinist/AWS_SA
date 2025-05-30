# Creating MemoryDB and connecting it to EC2 on AWS
# Tools & Services
### MemoryDB
### Redis
### Cloudformation
### EC2
### Docker
### VPC
## I first make a custom VPC
> Memory DB doesn't work with the defualt vpc
I made the VPC using the console
## We need to create MemoryDB on AWS
```sh
aws memorydb create-subnet-group
--subnet-group-name subnetgroup
--description "My subnet group"
--subnet-ids subnet-122345 subnet-12345
--query SubnetGroup.ARN
--output text
```
> The subnets need to be from different AZs (us-east-1a and us-east-1b)
## Create new User
```sh
aws memorydb create-user --user-name aggviol --access-string "on ~* &* +@all" --authentication-mode Passwords="Testing12345678901234567890!",Type=password
```
## Create ACL
```sh
aws memorydb create-acl --acl-name "aclpoa" --user-names "aggviol"
```
## Create Cluster
```sh
aws memorydb create-cluster --cluster-name ClusterTrap --node-type db.t4g.small --acl-name aclpoa --subnet-group subnetgroup
```
## Create the EC2 using CFN
```sh
template.yaml
./deploy.sh
```
> We need to use the VPC ID of our "project subnet" for it to work, not the default vpc
## I couldn't find my ClusterEndpoint to connect to EC2
This helped
```sh
aws memorydb describe-clusters --cluster-name cluster2trap
```
> Memorydb is so sloooooooww
> Took me like 10 minutes
## Logging into the EC2 via SSH
```sh
redis-cli -h id.memorydb.us-east-1.amazonaws.com --tls --user aggviol --pass Testing12345678901234567890!
```
## Output
> ![Alt text](/output-images/mem.png?raw=true "MmemoryDB works")

