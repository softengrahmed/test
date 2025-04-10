output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "ecs_cluster_id" {
  description = "The ID of the ECS cluster"
  value       = module.ecs_cluster.id
}

output "ecs_service_id" {
  description = "The ID of the ECS service"
  value       = module.ecs_service.id
}

output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = module.rds.id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3.bucket_arn
}
