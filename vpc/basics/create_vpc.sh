#!/usr/bin/env bash

# Create VPC
VPC_ID=$(aws ec2 create-vpc --cidr-block "172.1.0.0/16" --tag-specifications 'ResourceType=vpc, Tags=[{Key=Name,Value=my-custom-vpc}]' --region us-east-1 --query Vpc.VpcId)
echo "VPC_Id: $VPC_ID"

# Create Internet Gateway
IGW_ID=$(aws ec2 create-internet-gateway --query InternetGateway.InternetGatewayId --output text)
echo "IGW: $IGW_ID" 

# Attach Internet Gateway

# Create a new subnet

# Explicitly associate subnet

# Add a route for our Route tou our Internet Gateway 