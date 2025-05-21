# Terraform AWS Infrastructure

This repository contains Terraform code to deploy AWS infrastructure based on the architecture specified in the following URL:

![Architecture](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Components to be created:
1. VPC
2. Subnets (Public and Private)
3. Internet Gateway
4. NAT Gateway
5. Route Tables
6. Security Groups
7. EC2 Instances
8. RDS Instances
9. S3 Buckets
10. CloudFront Distribution
11. Elastic Load Balancer (ELB)
12. Auto Scaling Group
13. Lambda Functions
14. API Gateway
15. DynamoDB
16. CloudWatch

## Deployment Steps:
1. Clone the repository.
2. Checkout to the branch `terraform-aws-latest-1698883200000_v2`.
3. Initialize Terraform using `terraform init`.
4. Apply the Terraform configuration using `terraform apply`.

## Cost Estimation:
- VPC: $0 (Free)
- Subnets: $0 (Free)
- Internet Gateway: $0 (Free)
- NAT Gateway: $0.045 per hour
- Route Tables: $0 (Free)
- Security Groups: $0 (Free)
- EC2 Instances: Varies based on instance type (e.g., t2.micro: $0.0116 per hour)
- RDS Instances: Varies based on instance type (e.g., db.t2.micro: $0.017 per hour)
- S3 Buckets: $0.023 per GB
- CloudFront Distribution: $0.085 per GB
- Elastic Load Balancer (ELB): $0.025 per hour
- Auto Scaling Group: $0 (Free)
- Lambda Functions: $0.00001667 per GB-second
- API Gateway: $3.50 per million requests
- DynamoDB: $0.25 per GB
- CloudWatch: $0.30 per alarm
