# Google Cloud Architecture Terraform Configuration

This repository contains the Terraform configuration for deploying the Google Cloud architecture as specified in the following diagram:

![Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png)

## Components

The following components will be created:

- VPC Network
- Subnets
- Cloud SQL Instance
- GKE Cluster
- Cloud Storage Bucket
- Cloud Function
- Cloud Run Service
- Pub/Sub Topic
- Cloud DNS Zone
- IAM Roles

## Deployment Steps

1. Clone the repository:

```sh
git clone https://github.com/softengrahmed/test.git
```

2. Checkout the branch `terraform-google-latest-1698883200000_v3`:

```sh
git checkout terraform-google-latest-1698883200000_v3
```

3. Initialize Terraform:

```sh
terraform init
```

4. Create a `terraform.tfvars` file and specify the required variables:

```sh
project_id = "your-project-id"
region = "your-region"
network_name = "your-network-name"
subnets = [
  {
    name = "subnet-1"
    ip_cidr_range = "10.0.0.0/24"
    region = "your-region"
  },
  {
    name = "subnet-2"
    ip_cidr_range = "10.0.1.0/24"
    region = "your-region"
  }
]
sql_instance_name = "your-sql-instance-name"
sql_settings = {
  tier = "db-f1-micro"
}
gke_cluster_name = "your-gke-cluster-name"
bucket_name = "your-bucket-name"
function_name = "your-function-name"
cloud_run_service_name = "your-cloud-run-service-name"
topic_name = "your-topic-name"
dns_zone_name = "your-dns-zone-name"
roles = [
  {
    role = "roles/editor"
    members = ["user:your-email@example.com"]
  }
]
```

5. Apply the Terraform configuration:

```sh
terraform apply
```

## Cost Estimation

The cost of the infrastructure depends on the usage and configuration of each resource. Below is an estimation of the cost per day for each resource:

- VPC Network: $0 (free)
- Subnets: $0 (free)
- Cloud SQL Instance: ~$0.50/day
- GKE Cluster: ~$0.10/day per node
- Cloud Storage Bucket: ~$0.02/day per GB
- Cloud Function: ~$0.00001667 per GB-seconds
- Cloud Run Service: ~$0.000024 per vCPU-seconds
- Pub/Sub Topic: ~$0.40 per million messages
- Cloud DNS Zone: ~$0.20 per zone
- IAM Roles: $0 (free)

Please refer to the official Google Cloud pricing documentation for more accurate and detailed pricing information.
