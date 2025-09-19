variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnets" {
  description = "The list of subnets to create."
  type        = list(object({
    name           = string
    ip_cidr_range  = string
    region         = string
  }))
}

variable "sql_instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}

variable "sql_settings" {
  description = "The settings for the Cloud SQL instance."
  type        = map(any)
}

variable "gke_cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "bucket_name" {
  description = "The name of the Cloud Storage bucket."
  type        = string
}

variable "function_name" {
  description = "The name of the Cloud Function."
  type        = string
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud Run service."
  type        = string
}

variable "topic_name" {
  description = "The name of the Pub/Sub topic."
  type        = string
}

variable "dns_zone_name" {
  description = "The name of the Cloud DNS zone."
  type        = string
}

variable "roles" {
  description = "The IAM roles to assign."
  type        = list(object({
    role   = string
    members = list(string)
  }))
}
