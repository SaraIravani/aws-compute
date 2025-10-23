#!/bin/bash
# Script to run before Terraform apply
echo "========== Pre-deploy script =========="
echo "Checking AWS CLI version..."
aws --version

echo "Validating Terraform configuration..."
terraform validate

echo "Pre-deploy checks completed!"

