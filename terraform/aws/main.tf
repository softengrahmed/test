provider "aws" {
  region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "latest"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "ecs_cluster" {
  source = "terraform-aws-modules/ecs-cluster/aws"
  version = "latest"

  name = var.ecs_cluster_name
  vpc_id = module.vpc.vpc_id

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "ecs_service" {
  source = "terraform-aws-modules/ecs-service/aws"
  version = "latest"

  name = var.ecs_service_name
  cluster = module.ecs_cluster.id
  task_definition = var.task_definition
  desired_count = var.desired_count

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "rds" {
  source = "terraform-aws-modules/rds/aws"
  version = "latest"

  identifier = var.rds_identifier
  engine = var.rds_engine
  instance_class = var.rds_instance_class
  allocated_storage = var.rds_allocated_storage
  name = var.rds_db_name
  username = var.rds_username
  password = var.rds_password
  parameter_group_name = var.rds_parameter_group_name

  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_ids = module.vpc.private_subnets

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "latest"

  bucket = var.s3_bucket_name
  acl    = "private"

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
