output "vpc_network" {
  description = "The VPC network"
  value       = module.vpc.network_name
}

output "firewall_rules" {
  description = "The firewall rules"
  value       = module.firewall.rules
}

output "cloud_router" {
  description = "The Cloud Router"
  value       = module.cloud_router.name
}

output "cloud_vpn" {
  description = "The Cloud VPN"
  value       = module.cloud_vpn.name
}

output "cloud_interconnect" {
  description = "The Cloud Interconnect"
  value       = module.cloud_interconnect.name
}

output "compute_instances" {
  description = "The Compute Instances"
  value       = module.compute_instances.instances
}

output "cloud_storage" {
  description = "The Cloud Storage"
  value       = module.cloud_storage.name
}

output "cloud_sql" {
  description = "The Cloud SQL"
  value       = module.cloud_sql.name
}

output "cloud_load_balancer" {
  description = "The Cloud Load Balancer"
  value       = module.cloud_load_balancer.name
}

output "cloud_dns" {
  description = "The Cloud DNS"
  value       = module.cloud_dns.name
}

output "cloud_cdn" {
  description = "The Cloud CDN"
  value       = module.cloud_cdn.name
}

output "cloud_pubsub" {
  description = "The Cloud Pub/Sub"
  value       = module.cloud_pubsub.name
}

output "cloud_functions" {
  description = "The Cloud Functions"
  value       = module.cloud_functions.name
}

output "cloud_run" {
  description = "The Cloud Run"
  value       = module.cloud_run.name
}
