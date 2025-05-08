# AWS Architecture Deployment using Terraform

This repository contains Terraform code to deploy the architecture as shown in the diagram: [AWS Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Components

The following components will be created:
- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance (Web Server)
- RDS Instance (MySQL Database)
- ELB (Elastic Load Balancer)

## Deployment Steps

1. **Clone the repository**
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Create a new branch**
   ```sh
   git checkout -b terraform-aws-latest-1698787200000_v8
   ```

3. **Initialize Terraform**
   ```sh
   terraform init
   ```

4. **Review the plan**
   ```sh
   terraform plan
   ```

5. **Apply the plan**
   ```sh
   terraform apply
   ```

6. **Verify the outputs**
   ```sh
   terraform output
   ```

## Cost Estimation

The estimated cost per day for the infrastructure is as follows:
- VPC: Free
- Subnets: Free
- Internet Gateway: Free
- Route Table: Free
- Security Group: Free
- EC2 Instance (t2.micro): $0.0116 per hour (~$0.28 per day)
- RDS Instance (db.t2.micro): $0.017 per hour (~$0.41 per day)
- ELB: $0.025 per hour (~$0.60 per day)

Total estimated cost per day: ~$1.29

## Official Documentation

- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)
- [AWS RDS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [AWS ELB Documentation](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)

## Branch Information

The code is stored in the branch: `terraform-aws-latest-1698787200000_v8`
