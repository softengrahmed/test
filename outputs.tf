output "network_name" {
  description = "The name of the VPC network."
  value       = module.network.network_name
}

output "subnets" {
  description = "The list of subnets created."
  value       = module.network.subnets
}

output "sql_instance_name" {
  description = "The name of the Cloud SQL instance."
  value       = module.cloud_sql.name
}

output "gke_cluster_name" {
  description = "The name of the GKE cluster."
  value       = module.gke.name
}

output "bucket_name" {
  description = "The name of the Cloud Storage bucket."
  value       = module.cloud_storage.name
}

output "function_name" {
  description = "The name of the Cloud Function."
  value       = module.cloud_functions.name
}

output "cloud_run_service_name" {
  description = "The name of the Cloud Run service."
  value       = module.cloud_run.name
}

output "topic_name" {
  description = "The name of the Pub/Sub topic."
  value       = module.cloud_pubsub.name
}

output "dns_zone_name" {
  description = "The name of the Cloud DNS zone."
  value       = module.cloud_dns.name
}

output "roles" {
  description = "The IAM roles assigned."
  value       = module.cloud_iam.roles
}
