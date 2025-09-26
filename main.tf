provider "google" {
  version = "latest"
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "latest"

  project_id   = var.project_id
  network_name = var.network_name
  subnets      = var.subnets
}

module "firewall-rules" {
  source  = "terraform-google-modules/network/google//modules/firewall-rules"
  version = "latest"

  project_id = var.project_id
  network    = module.vpc.network_name
  rules      = var.firewall_rules
}

module "cloud-router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.router_name
}

module "cloud-nat" {
  source  = "terraform-google-modules/cloud-nat/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  router     = module.cloud-router.name
}

module "vpn-gateway" {
  source  = "terraform-google-modules/vpn/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.vpn_gateway_name
}

module "interconnect" {
  source  = "terraform-google-modules/interconnect/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.interconnect_name
}

module "cloud-load-balancer" {
  source  = "terraform-google-modules/cloud-load-balancer/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.load_balancer_name
}

module "managed-instance-groups" {
  source  = "terraform-google-modules/instance-group/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.instance_group_name
}

module "cloud-storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "latest"

  project_id = var.project_id
  name       = var.storage_name
}

module "cloud-sql" {
  source  = "terraform-google-modules/cloud-sql/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  name       = var.sql_name
}

module "cloud-pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "latest"

  project_id = var.project_id
  name       = var.pubsub_name
}

module "cloud-functions" {
  source  = "terraform-google-modules/functions/google"
  version = "latest"

  project_id = var.project_id
  name       = var.functions_name
}

module "cloud-run" {
  source  = "terraform-google-modules/run/google"
  version = "latest"

  project_id = var.project_id
  name       = var.run_name
}

module "cloud-iam" {
  source  = "terraform-google-modules/iam/google"
  version = "latest"

  project_id = var.project_id
  name       = var.iam_name
}
