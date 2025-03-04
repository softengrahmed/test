# test
test repository for github codemie testing

# Terraform AWS Infrastructure

This repository contains Terraform code to deploy a multi-region AWS infrastructure based on the architecture specified [here](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png).

## Components

- VPC
- Subnets (Public)
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instances

## Deployment Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/iac-repo.git
   ```

2. Navigate to the repository directory:
   ```sh
   cd iac-repo
   ```

3. Checkout the branch with the Terraform code:
   ```sh
   git checkout terraform-aws-latest-1696531200000_v4
   ```

4. Initialize Terraform:
   ```sh
   terraform init
   ```

5. Review the Terraform plan:
   ```sh
   terraform plan
   ```

6. Apply the Terraform configuration:
   ```sh
   terraform apply
   ```

## Cost Estimation

The following is an estimation of the daily cost for the infrastructure components:

- **VPC**: No additional cost.
- **Subnets**: No additional cost.
- **Internet Gateway**: No additional cost.
- **Route Tables**: No additional cost.
- **Security Groups**: No additional cost.
- **EC2 Instances**:
  - `t2.micro` instance in `us-east-1`: $0.0116 per hour (~$0.2784 per day)
  - `t2.micro` instance in `us-west-2`: $0.0116 per hour (~$0.2784 per day)

**Total Estimated Cost per Day**: ~$0.5568

## Official Support Documentation

For more details on the AWS services used in this infrastructure, please refer to the official documentation:

- [Amazon VPC](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [Amazon EC2](https://docs.aws.amazon.com/ec2/index.html)
- [Amazon Route Tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
- [Amazon Security Groups](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
