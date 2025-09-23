variable "project_id" {
  description = "The project ID where resources will be created"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
}

variable "subnets" {
  description = "List of subnets to be created"
  type        = list(object({
    name           = string
    ip_cidr_range  = string
    region         = string
  }))
}

variable "instances" {
  description = "List of VM instances to be created"
  type        = list(object({
    name        = string
    machine_type = string
    zone         = string
    network      = string
    subnetwork   = string
  }))
}

variable "backend_services" {
  description = "List of backend services for load balancer"
  type        = list(object({
    name        = string
    protocol    = string
    port        = number
    health_check = string
  }))
}

variable "buckets" {
  description = "List of Cloud Storage buckets to be created"
  type        = list(object({
    name        = string
    location    = string
    storage_class = string
  }))
}

variable "sql_instances" {
  description = "List of Cloud SQL instances to be created"
  type        = list(object({
    name        = string
    database_version = string
    region      = string
  }))
}

variable "managed_zones" {
  description = "List of managed zones for Cloud DNS"
  type        = list(object({
    name        = string
    dns_name    = string
    description = string
  }))
}

variable "roles" {
  description = "List of IAM roles to be created"
  type        = list(object({
    name        = string
    permissions = list(string)
  }))
}

variable "policies" {
  description = "List of IAM policies to be created"
  type        = list(object({
    name        = string
    bindings    = list(object({
      role    = string
      members = list(string)
    }))
  }))
}
