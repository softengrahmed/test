# Terraform configuration for AWS architecture as per the provided diagram

provider "aws" {
  region = "us-east-1"
}

# Additional provider for multi-region setup
provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

# VPC in us-east-1
resource "aws_vpc" "east_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "East VPC"
  }
}

# VPC in us-west-2
resource "aws_vpc" "west_vpc" {
  provider = "aws.west"
  cidr_block = "10.1.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "West VPC"
  }
}

# More resources will be added here based on the architecture diagram