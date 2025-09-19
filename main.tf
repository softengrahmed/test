provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source  = "terraform-google-modules/network/google"
  version = "latest"

  project_id   = var.project_id
  network_name = var.network_name
  subnets      = var.subnets
}

module "cloud_sql" {
  source  = "terraform-google-modules/sql-db/google"
  version = "latest"

  project_id = var.project_id
  name       = var.sql_instance_name
  region     = var.region
  settings   = var.sql_settings
}

module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "latest"

  project_id = var.project_id
  name       = var.gke_cluster_name
  region     = var.region
  network    = module.network.network_name
  subnetwork = module.network.subnets[0].name
}

module "cloud_storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "latest"

  project_id = var.project_id
  name       = var.bucket_name
}

module "cloud_functions" {
  source  = "terraform-google-modules/cloud-functions/google"
  version = "latest"

  project_id = var.project_id
  name       = var.function_name
  region     = var.region
}

module "cloud_run" {
  source  = "terraform-google-modules/cloud-run/google"
  version = "latest"

  project_id = var.project_id
  name       = var.cloud_run_service_name
  region     = var.region
}

module "cloud_pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "latest"

  project_id = var.project_id
  name       = var.topic_name
}

module "cloud_dns" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "latest"

  project_id = var.project_id
  name       = var.dns_zone_name
}

module "cloud_iam" {
  source  = "terraform-google-modules/iam/google"
  version = "latest"

  project_id = var.project_id
  roles      = var.roles
}
