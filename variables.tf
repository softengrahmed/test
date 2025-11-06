variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "region" {
  description = "The region"
  type        = string
}

variable "zone" {
  description = "The zone"
  type        = string
}

variable "subnets" {
  description = "The subnets"
  type        = list(object({
    name           = string
    ip_cidr_range  = string
    region         = string
  }))
}

variable "firewall_rules" {
  description = "The firewall rules"
  type        = list(object({
    name        = string
    description = string
    direction   = string
    priority    = number
    ranges      = list(string)
    allow       = list(object({
      protocol = string
      ports    = list(string)
    }))
  }))
}

variable "instances" {
  description = "The compute instances"
  type        = list(object({
    name        = string
    machine_type = string
    zone        = string
    network_interface = list(object({
      network = string
      subnetwork = string
    }))
  }))
}
