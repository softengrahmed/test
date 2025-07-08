# test
# Terraform AWS Infrastructure

This repository contains Terraform code to deploy the following AWS infrastructure components:

- VPC
- Subnets (Public and Private)
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- EC2 Instances
- RDS Instances
- S3 Bucket
- CloudFront Distribution
- Elastic Load Balancer (ELB)
- Auto Scaling Group

## Architecture Diagram

![Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Deployment Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/softengrahmed/test.git
   cd test
   ```

2. Checkout the branch containing the Terraform code:
   ```sh
   git checkout terraform-aws-latest-1698883200000_v4
   ```

3. Initialize Terraform:
   ```sh
   terraform init
   ```

4. Apply the Terraform configuration:
   ```sh
   terraform apply
   ```

5. Confirm the apply action by typing `yes`.

## Components

The following components will be created:

- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- NAT Gateway
- Route Tables (Public and Private)
- Security Groups
- EC2 Instance (Web Server)
- RDS Instance (MySQL Database)
- S3 Bucket
- CloudFront Distribution
- Elastic Load Balancer (ELB)
- Auto Scaling Group

## Cost Estimation

The estimated cost per day for the infrastructure components is as follows:

- VPC: Free
- Subnets: Free
- Internet Gateway: Free
- NAT Gateway: $0.045 per hour
- Route Tables: Free
- Security Groups: Free
- EC2 Instance (t2.micro): $0.0116 per hour
- RDS Instance (db.t2.micro): $0.017 per hour
- S3 Bucket: $0.023 per GB
- CloudFront Distribution: $0.085 per GB
- Elastic Load Balancer (ELB): $0.025 per hour
- Auto Scaling Group: Free

Total estimated cost per day: ~$3.50

## Branch Information

The code is stored in the branch `terraform-aws-latest-1698883200000_v4`.
