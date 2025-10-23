#!/bin/bash
# Script to run after Terraform apply
echo "========== Post-deploy script =========="
echo "Fetching deployed EC2 instances..."
terraform output ec2_instance_id

echo "Fetching Launch Template ID..."
terraform output launch_template_id

echo "Fetching Auto Scaling Group details..."
terraform output asg_name
terraform output asg_arn

echo "Post-deploy steps completed!"

