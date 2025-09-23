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

module "cloud_nat" {
  source  = "terraform-google-modules/cloud-nat/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  router     = module.vpc.router
}

module "vm_instances" {
  source  = "terraform-google-modules/vm/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  instances  = var.instances
}

module "load_balancer" {
  source  = "terraform-google-modules/load-balancer/google"
  version = "latest"

  project_id = var.project_id
  region     = var.region
  backend_services = var.backend_services
}

module "cloud_storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "latest"

  project_id = var.project_id
  buckets    = var.buckets
}

module "cloud_sql" {
  source  = "terraform-google-modules/cloud-sql/google"
  version = "latest"

  project_id = var.project_id
  instances  = var.sql_instances
}

module "cloud_dns" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "latest"

  project_id = var.project_id
  managed_zones = var.managed_zones
}

module "iam" {
  source  = "terraform-google-modules/iam/google"
  version = "latest"

  project_id = var.project_id
  roles      = var.roles
  policies   = var.policies
}
