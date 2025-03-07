provider "aws" {
  region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "latest"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "latest"

  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "latest"

  identifier = var.rds_identifier
  engine     = "mysql"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  name              = var.db_name
  username          = var.db_username
  password          = var.db_password
  subnet_ids        = module.vpc.private_subnets
  vpc_security_group_ids = [module.vpc.default_security_group_id]

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
