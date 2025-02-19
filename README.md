# Terraform AWS Infrastructure

This repository contains Terraform code to set up a multi-region AWS infrastructure.

![Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Deployment Steps

1. **Clone the Repository**
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Checkout the Branch**
   ```sh
   git checkout terraform-aws-latest-1696531200000_v1
   ```

3. **Initialize Terraform**
   ```sh
   terraform init
   ```

4. **Review the Plan**
   ```sh
   terraform plan
   ```

5. **Apply the Plan**
   ```sh
   terraform apply
   ```

## Components Created

- VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Route Table Associations

## Cost Estimation

- **VPC**: No additional cost
- **Subnets**: No additional cost
- **Internet Gateway**: $0.045 per hour
- **NAT Gateway**: $0.045 per hour + $0.045 per GB data processed
- **Elastic IP**: $0.005 per hour when not associated with a running instance
