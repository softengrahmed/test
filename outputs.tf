output "vpc_network" {
  description = "The name of the VPC network"
  value       = module.vpc.network_name
}

output "subnets" {
  description = "The list of subnets created"
  value       = module.vpc.subnets
}

output "firewall_rules" {
  description = "The list of firewall rules created"
  value       = module.firewall-rules.rules
}

output "cloud_router" {
  description = "The name of the Cloud Router"
  value       = module.cloud-router.name
}

output "cloud_nat" {
  description = "The name of the Cloud NAT"
  value       = module.cloud-nat.name
}

output "vpn_gateway" {
  description = "The name of the VPN Gateway"
  value       = module.vpn-gateway.name
}

output "interconnect" {
  description = "The name of the Interconnect"
  value       = module.interconnect.name
}

output "cloud_load_balancer" {
  description = "The name of the Cloud Load Balancer"
  value       = module.cloud-load-balancer.name
}

output "managed_instance_groups" {
  description = "The name of the Managed Instance Group"
  value       = module.managed-instance-groups.name
}

output "cloud_storage" {
  description = "The name of the Cloud Storage"
  value       = module.cloud-storage.name
}

output "cloud_sql" {
  description = "The name of the Cloud SQL"
  value       = module.cloud-sql.name
}

output "cloud_pubsub" {
  description = "The name of the Cloud Pub/Sub"
  value       = module.cloud-pubsub.name
}

output "cloud_functions" {
  description = "The name of the Cloud Functions"
  value       = module.cloud-functions.name
}

output "cloud_run" {
  description = "The name of the Cloud Run"
  value       = module.cloud-run.name
}

output "cloud_iam" {
  description = "The name of the Cloud IAM"
  value       = module.cloud-iam.name
}
