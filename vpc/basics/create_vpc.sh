#!/usr/bin/env bash
set -e

# Create VPC
VPC_ID=$(aws ec2 create-vpc --cidr-block "172.1.0.0/16" --tag-specifications 'ResourceType=vpc, Tags=[{Key=Name,Value=my-custom-vpc}]' --region us-east-1 --query Vpc.VpcId  --output text)
echo "VPC_ID:$VPC_ID"

# Turn on DNS Hostnames
aws ec2 modify-vpc-attribute --vpc-id $VPC_ID --enable-dns-hostnames "{\"Value\": true}"


# Create Internet Gateway
IGW_ID=$(aws ec2 create-internet-gateway --tag-specifications 'ResourceType=internet-gateway,Tags=[{Key=Name,Value=my-custom-IGW}]' --query 'InternetGateway.InternetGatewayId' --output text)
echo "IGW_ID:$IGW_ID" 

# Attach Internet Gateway
aws ec2 attach-internet-gateway --internet-gateway-id $IGW_ID --vpc-id $VPC_ID

# Create a new subnet
SUBNET_ID=$(aws ec2 create-subnet --vpc-id $VPC_ID --cidr-block 172.1.0.0/20 --query Subnet.SubnetId --output text)
echo "SUBNET_ID:$SUBNET_ID"

#Adding a route table
ROUTE_TABLE_ID=$(aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$VPC_ID" "Name=association.main,Values=true" --query "RouteTables[].RouteTableId[]" --output text)
echo "ROUTE_TABLE_ID:$ROUTE_TABLE_ID"

# Auto Assign IPV4 to make it public
aws ec2 modify-subnet-attribute --subnet-id $SUBNET_ID --map-public-ip-on-launch

# Explicitly associate subnet
aws ec2 associate-route-table --route-table-id $ROUTE_TABLE_ID --subnet-id $SUBNET_ID

# Add a route for our Route tou our Internet Gateway 
aws ec2 create-route --route-table-id $ROUTE_TABLE_ID --destination-cidr-block 0.0.0.0/0 --gateway-id $IGW_ID

