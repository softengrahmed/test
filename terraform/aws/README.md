# Terraform AWS Infrastructure

This repository contains Terraform code to deploy AWS infrastructure based on the architecture specified in the following URL:

![Architecture](https://miro.medium.com/v2/resize:fit:1400/1*m0GmprNvQHe5CvgOI0T8JQ.png)

## Components

The following components will be created:

- VPC
- ECS Cluster
- ECS Service
- RDS Instance
- S3 Bucket

## Deployment Steps

1. Ensure you have Terraform installed. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).
2. Clone the repository and navigate to the `terraform/aws` directory.
3. Initialize Terraform:

```sh
terraform init
```

4. Create a `terraform.tfvars` file to specify the variable values:

```sh
cat <<EOF > terraform.tfvars
region = "us-west-2"
vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"
azs = ["us-west-2a", "us-west-2b", "us-west-2c"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
environment = "dev"
ecs_cluster_name = "my-ecs-cluster"
ecs_service_name = "my-ecs-service"
task_definition = "my-task-def"
desired_count = 2
rds_identifier = "my-rds-instance"
rds_engine = "mysql"
rds_instance_class = "db.t2.micro"
rds_allocated_storage = 20
rds_db_name = "mydatabase"
rds_username = "admin"
rds_password = "password"
rds_parameter_group_name = "default.mysql5.7"
s3_bucket_name = "my-s3-bucket"
EOF
```

5. Apply the Terraform configuration:

```sh
terraform apply
```

6. Review the output to get the IDs and ARNs of the created resources.

## Cost Estimation

The cost of the infrastructure will vary based on usage and AWS pricing. Below is an estimation of the daily cost for each resource:

- VPC: $0 (VPC itself is free, but subnets and NAT gateways have costs)
- ECS Cluster: $0 (ECS cluster management is free, but running tasks have costs)
- ECS Service: Depends on the number of tasks and their resource usage
- RDS Instance: ~$0.50/day (for db.t2.micro with 20GB storage)
- S3 Bucket: Depends on storage and requests (e.g., $0.023/GB for standard storage)

Please refer to the [AWS Pricing Calculator](https://calculator.aws/#/) for a more accurate estimation based on your usage.
