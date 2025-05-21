## Create two VPCs 
Use the Console

## Create VPC peering connection
```sh
aws ec2 create-vpc-peering-connection --vpc-id vpc-id-a --peer-vpc-id vpc-id-b
```
## Accept Peering
```sh
aws ec2 accept-vpc-peering-connection --vpc-peering-connection-id pcx-peeringid
```
## Connect route table a to b
```sh
aws ec2 create-route --route-table rtb-of-vpc-a --destination-cidr-block ip-address-of-b --vpc-peering-connection pcx-peeringid
```
## Connect route table b to a
```sh
aws ec2 create-route --route-table rtb-of-vpc-b --destination-cidr-block ip-address-of-a --vpc-peering-conection pcx-peeringid
```