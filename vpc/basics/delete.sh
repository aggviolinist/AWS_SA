#!/usr/bin/env bash

# Check for VPC ID in the env var
if [ -z "$1" ]; then
    echo "There need to be a VPC to be deleted"
else
    export VPC_ID="$1"
fi
# Check for IGW ID in the env
if [ -z "$2" ]; then
    echo "There need to be an internet gateway to be deleted"
else
    export IGW_ID="$2"
fi
# Check for Subnet ID in the env
if [ -z "$3" ]; then
   echo "There need to be a subnet id"
else
   export SUBNET_ID="$3"
fi
# Check for the associate id in the env
if [ -z "$4" ]; then
   echo "There need to be an associate id"
else
   export ASSOCIATE_ID="$4"
fi
# Check for Route table id in the env
if [ -z "$5" ]; then
    echo "There need to be a route table id"
else
    export ROUTE_TABLE_ID="$5"
fi

# dissasociate subnet from route table
echo "Disassociating subnet...."
aws ec2 disassociate-route-table --association-id $ASSOCIATE_ID

# delete subnet
echo "Deleting subnet......."
aws ec2 delete-subnet --subnet-id $SUBNET_ID

# delete the Route Table
echo "Deleting the Route Table..... "
aws ec2 delete-route-table --route-table-id $ROUTE_TABLE_ID

# detach the IGW
echo "Detaching the Internet Gateway...."
aws ec2 detach-internet-gateway --internet-gateway-id $IGW_ID --vpc-id $VPC_ID

# deleting IGW
echo "Deleting Internet Gateway......"
aws ec2 delete-internet-gateway --internet-gateway-id $IGW_ID

# delete VPC
echo "Deleting VPC........."
aws ec2 delete-vpc --vpc-id $VPC_ID
