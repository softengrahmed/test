# Terraform AWS Infrastructure

This repository contains Terraform code to deploy an AWS infrastructure based on the architecture specified in the following diagram:
![Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/format/webp/1*Tk3fKM2RUM839G1yqpgoGQ.png)

## Components

1. VPC
2. Subnets (Public and Private)
3. Internet Gateway
4. NAT Gateway
5. Route Tables
6. Security Groups
7. EC2 Instances (Web Servers)
8. Application Load Balancer
9. Auto Scaling Group
10. RDS Database
11. S3 Bucket
12. CloudFront Distribution

## Deployment Steps

1. **Install Terraform**: Ensure Terraform is installed on your machine. You can download it from [Terraform Downloads](https://www.terraform.io/downloads.html).

2. **Clone the Repository**: Clone the repository where the Terraform code is stored.
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

3. **Checkout the Branch**: Checkout the branch created for this Terraform code.
   ```sh
   git checkout terraform-aws-latest-1698787200000_v6_v1
   ```

4. **Initialize Terraform**: Initialize the Terraform configuration.
   ```sh
   terraform init
   ```

5. **Review the Plan**: Review the Terraform plan to see the resources that will be created.
   ```sh
   terraform plan
   ```

6. **Apply the Plan**: Apply the Terraform plan to create the resources.
   ```sh
   terraform apply
   ```

## Cost Estimation

The cost estimation for the infrastructure components per day is as follows:

1. **VPC**: No additional cost.
2. **Subnets**: No additional cost.
3. **Internet Gateway**: No additional cost.
4. **NAT Gateway**: ~$0.045 per hour (~$1.08 per day).
5. **EC2 Instances**: ~$0.0116 per hour per instance (~$0.2784 per day per instance).
6. **Application Load Balancer**: ~$0.0225 per hour (~$0.54 per day).
7. **RDS Database**: ~$0.017 per hour (~$0.408 per day).
8. **S3 Bucket**: Cost based on storage and requests.
9. **CloudFront Distribution**: Cost based on data transfer and requests.

## Summary of Components

1. VPC
2. Subnets (Public and Private)
3. Internet Gateway
4. NAT Gateway
5. Route Tables
6. Security Groups
7. EC2 Instances (Web Servers)
8. Application Load Balancer
9. Auto Scaling Group
10. RDS Database
11. S3 Bucket
12. CloudFront Distribution

## Branch Name
The branch name used for storing the code is `terraform-aws-latest-1698787200000_v6_v1`.
