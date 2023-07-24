#!/bin/bash
####################################################
# Author: vishwajit kumar                          #
# Date: 24/07/2023                                 #
# Version: v1                                      #
# This scripts will report the AWS resource usages #
####################################################

set -x

# AWS s3 buckets
echo "print the list of s3 buckets"
aws s3 ls

# AWS ec2 instance 

echo "print the list of ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#AWS list of lambda

echo "print the list of lambda function"
aws lambda list-functions

#AWS IAM list

echo "print the list of IAM role "

aws iam list-users
