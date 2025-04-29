# test
# Terraform AWS Architecture

This repository contains Terraform code to deploy the following AWS architecture:

![AWS Architecture](https://miro.medium.com/v2/resize:fit:1400/format/webp/1*Tk3fKM2RUM839G1yqpgoGQ.png)

## Components

- VPC
- Public Subnet
- Private Subnet
- Security Group
- EC2 Instance
- RDS Instance
- S3 Bucket
- Lambda Function
- IAM Role

## Deployment Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/softengrahmed/test.git
   cd test
   ```

2. Checkout the branch:
   ```sh
   git checkout terraform-aws-latest-1698787200000_v4
   ```

3. Initialize Terraform:
   ```sh
   terraform init
   ```

4. Apply the Terraform configuration:
   ```sh
   terraform apply
   ```

## Cost Estimation

- **VPC**: $0 (free)
- **Public Subnet**: $0 (free)
- **Private Subnet**: $0 (free)
- **Security Group**: $0 (free)
- **EC2 Instance**: ~$0.0116 per hour (~$8.40 per month)
- **RDS Instance**: ~$0.017 per hour (~$12.41 per month)
- **S3 Bucket**: ~$0.023 per GB per month
- **Lambda Function**: ~$0.00001667 per GB-second
- **IAM Role**: $0 (free)

Note: Costs are approximate and may vary based on usage and AWS pricing changes.
