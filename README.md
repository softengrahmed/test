# Google Cloud Architecture Deployment

This repository contains Terraform code to deploy the Google Cloud Architecture as specified in the following diagram:
![Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png)

## Components to be created:
1. VPC
2. Subnets
3. Firewall Rules
4. Cloud Router
5. Cloud VPN
6. Cloud Interconnect
7. Compute Engine Instances
8. Cloud Storage
9. Cloud SQL
10. Cloud Load Balancer
11. Cloud DNS
12. Cloud CDN
13. Cloud Pub/Sub
14. Cloud Functions
15. Cloud Run
16. Cloud IAM

## Deployment Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/softengrahmed/test.git
   cd test
   ```

2. Checkout the branch `terraform-google-latest-1698883200000_v10`:
   ```sh
   git checkout terraform-google-latest-1698883200000_v10
   ```

3. Initialize Terraform:
   ```sh
   terraform init
   ```

4. Apply the Terraform configuration:
   ```sh
   terraform apply
   ```

5. Provide the necessary input variables when prompted:
   - `project_id`: Your Google Cloud project ID
   - `region`: The region to deploy the resources
   - `zone`: The zone to deploy the resources
   - `subnets`: The subnets configuration
   - `firewall_rules`: The firewall rules configuration
   - `instances`: The compute instances configuration

## Cost Estimation

The cost of the infrastructure depends on the usage and configuration of each resource. Below is an estimation of the cost per day for each resource:

- VPC: $0.01
- Subnets: $0.01 per subnet
- Firewall Rules: $0.01 per rule
- Cloud Router: $0.05
- Cloud VPN: $0.10
- Cloud Interconnect: $0.10
- Compute Engine Instances: $0.10 per instance
- Cloud Storage: $0.01 per GB
- Cloud SQL: $0.10 per instance
- Cloud Load Balancer: $0.05
- Cloud DNS: $0.01 per zone
- Cloud CDN: $0.01 per GB
- Cloud Pub/Sub: $0.01 per topic
- Cloud Functions: $0.01 per function
- Cloud Run: $0.01 per service
- Cloud IAM: $0.01 per policy

## Official Support Documentation

For detailed information on each component, refer to the official Google Cloud documentation:
- [VPC](https://cloud.google.com/vpc/docs)
- [Subnets](https://cloud.google.com/vpc/docs/subnets)
- [Firewall Rules](https://cloud.google.com/vpc/docs/firewalls)
- [Cloud Router](https://cloud.google.com/router/docs)
- [Cloud VPN](https://cloud.google.com/vpn/docs)
- [Cloud Interconnect](https://cloud.google.com/interconnect/docs)
- [Compute Engine Instances](https://cloud.google.com/compute/docs)
- [Cloud Storage](https://cloud.google.com/storage/docs)
- [Cloud SQL](https://cloud.google.com/sql/docs)
- [Cloud Load Balancer](https://cloud.google.com/load-balancing/docs)
- [Cloud DNS](https://cloud.google.com/dns/docs)
- [Cloud CDN](https://cloud.google.com/cdn/docs)
- [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs)
- [Cloud Functions](https://cloud.google.com/functions/docs)
- [Cloud Run](https://cloud.google.com/run/docs)
- [Cloud IAM](https://cloud.google.com/iam/docs)

## Branch Information

The code is stored in the branch `terraform-google-latest-1698883200000_v10`.
