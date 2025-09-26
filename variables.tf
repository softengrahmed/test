variable "project_id" {
  description = "The ID of the project to deploy to"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnets" {
  description = "The list of subnets to create"
  type        = list(object({
    name           = string
    ip_cidr_range  = string
    region         = string
  }))
}

variable "firewall_rules" {
  description = "The list of firewall rules to create"
  type        = list(object({
    name        = string
    description = string
    direction   = string
    priority    = number
    network     = string
    action      = string
    source_ranges = list(string)
    target_tags   = list(string)
    allowed = list(object({
      protocol = string
      ports    = list(string)
    }))
  }))
}

variable "router_name" {
  description = "The name of the Cloud Router"
  type        = string
}

variable "vpn_gateway_name" {
  description = "The name of the VPN Gateway"
  type        = string
}

variable "interconnect_name" {
  description = "The name of the Interconnect"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of the Cloud Load Balancer"
  type        = string
}

variable "instance_group_name" {
  description = "The name of the Managed Instance Group"
  type        = string
}

variable "storage_name" {
  description = "The name of the Cloud Storage"
  type        = string
}

variable "sql_name" {
  description = "The name of the Cloud SQL"
  type        = string
}

variable "pubsub_name" {
  description = "The name of the Cloud Pub/Sub"
  type        = string
}

variable "functions_name" {
  description = "The name of the Cloud Functions"
  type        = string
}

variable "run_name" {
  description = "The name of the Cloud Run"
  type        = string
}

variable "iam_name" {
  description = "The name of the Cloud IAM"
  type        = string
}
