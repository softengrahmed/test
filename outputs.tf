output "vpc_network" {
  description = "The VPC network created"
  value       = module.vpc.network
}

output "vm_instances" {
  description = "The VM instances created"
  value       = module.vm_instances.instances
}

output "load_balancer" {
  description = "The Load Balancer created"
  value       = module.load_balancer.load_balancer
}

output "cloud_storage" {
  description = "The Cloud Storage buckets created"
  value       = module.cloud_storage.buckets
}

output "cloud_sql" {
  description = "The Cloud SQL instances created"
  value       = module.cloud_sql.instances
}

output "cloud_dns" {
  description = "The Cloud DNS managed zones created"
  value       = module.cloud_dns.managed_zones
}

output "iam_roles" {
  description = "The IAM roles created"
  value       = module.iam.roles
}

output "iam_policies" {
  description = "The IAM policies created"
  value       = module.iam.policies
}
