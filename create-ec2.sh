#!/bin/bash
IMAGE_ID=ami-03265a0778a880afb
INSTANCE_TYPE=t2.micro
SECURITY_GROUP=sg-0f8c523d0f4ed489b
HOTSTED_ZONE=Z0997824248HW2XYA9N5U
DOMAIN_NAME=venkateshamsonnalia143.online
NAME=$@
for i in $NAME
do 
    echo " Name: $i "
    aws ec2 run-instances --image-id $IMAGE_ID --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" 
    #| jq -r '.Instances[0].PrivateIpAddress')

done