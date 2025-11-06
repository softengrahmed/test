provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "latest"

  project_id   = var.project_id
  network_name = "my-vpc"
  subnets      = var.subnets
}

module "firewall" {
  source  = "terraform-google-modules/network/google//modules/firewall-rules"
  version = "latest"

  project_id = var.project_id
  network    = module.vpc.network_name
  rules      = var.firewall_rules
}

module "cloud_router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-router"
  network    = module.vpc.network_name
  region     = var.region
}

module "cloud_vpn" {
  source  = "terraform-google-modules/cloud-vpn/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-vpn"
  network    = module.vpc.network_name
  region     = var.region
}

module "cloud_interconnect" {
  source  = "terraform-google-modules/cloud-interconnect/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-interconnect"
  region     = var.region
}

module "compute_instances" {
  source  = "terraform-google-modules/compute-instance/google"
  version = "latest"

  project_id = var.project_id
  zone       = var.zone
  instances  = var.instances
}

module "cloud_storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-storage"
}

module "cloud_sql" {
  source  = "terraform-google-modules/sql-db/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-sql"
  region     = var.region
}

module "cloud_load_balancer" {
  source  = "terraform-google-modules/cloud-load-balancer/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-load-balancer"
}

module "cloud_dns" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-dns"
}

module "cloud_cdn" {
  source  = "terraform-google-modules/cloud-cdn/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-cdn"
}

module "cloud_pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-pubsub"
}

module "cloud_functions" {
  source  = "terraform-google-modules/cloud-functions/google"
  version = "latest"

  project_id = var.project_id
  name       = "my-cloud-functions"
}

module "cloud_run" {
  source  = "terraform-google-modules/cloud-run/google"
  version = "latest"

  project_id = var.project_id
  name       = "