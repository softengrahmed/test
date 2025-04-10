variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of private subnet CIDR blocks"
  type        = list(string)
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "environment" {
  description = "The environment for the resources"
  type        = string
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "ecs_service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "task_definition" {
  description = "The task definition for the ECS service"
  type        = string
}

variable "desired_count" {
  description = "The desired number of tasks for the ECS service"
  type        = number
}

variable "rds_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
}

variable "rds_engine" {
  description = "The database engine for the RDS instance"
  type        = string
}

variable "rds_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "rds_allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
}

variable "rds_db_name" {
  description = "The name of the database"
  type        = string
}

variable "rds_username" {
  description = "The username for the database"
  type        = string
}

variable "rds_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "rds_parameter_group_name" {
  description = "The parameter group name for the RDS instance"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
