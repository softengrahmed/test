output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "rds_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.endpoint
}
