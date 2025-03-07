# test
# AWS Infrastructure Deployment

This repository contains Terraform code to deploy the following AWS infrastructure components:

1. VPC with public and private subnets
2. EKS Cluster
3. RDS Instance

## Architecture Diagram

![Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Deployment Steps

1. Clone the repository:

```sh
git clone <repository-url>
cd <repository-directory>
```

2. Checkout the branch:

```sh
git checkout terraform-aws-latest-1696531200000_v5
```

3. Initialize Terraform:

```sh
terraform init
```

4. Review the Terraform plan:

```sh
terraform plan
```

5. Apply the Terraform plan:

```sh
terraform apply
```

## Components

- VPC with public and private subnets
- EKS Cluster
- RDS Instance

## Cost Estimation

- VPC: $0.00 (No additional cost for VPC)
- EKS Cluster: ~$0.20 per hour
- RDS Instance: ~$0.10 per hour

Note: The cost estimation is approximate and may vary based on usage and AWS pricing.
