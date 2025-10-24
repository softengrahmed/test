# test
# Google Cloud Architecture Deployment

This repository contains Terraform code to deploy a Google Cloud architecture based on the following diagram:
![Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png)

## Components

The following components are created by this Terraform code:

1. VPC Network
2. Subnets
3. Cloud Router
4. VPN Gateway
5. Firewall Rules
6. Cloud Load Balancer
7. Instance Groups
8. Cloud Storage
9. Cloud SQL
10. Cloud Pub/Sub
11. Cloud Functions
12. Cloud CDN
13. Cloud DNS

## Deployment Steps

1. **Install Terraform**: Follow the instructions on the [Terraform website](https://www.terraform.io/downloads.html) to install Terraform.

2. **Configure Google Cloud Provider**: Ensure you have the Google Cloud SDK installed and authenticated. Set up your Google Cloud credentials by running:
   ```sh
   gcloud auth application-default login
   ```

3. **Clone the Repository**: Clone this repository to your local machine.
   ```sh
   git clone https://github.com/softengrahmed/test.git
   cd test
   ```

4. **Initialize Terraform**: Initialize Terraform in the repository directory.
   ```sh
   terraform init
   ```

5. **Apply Terraform Configuration**: Apply the Terraform configuration to create the resources.
   ```sh
   terraform apply
   ```

6. **Verify Deployment**: Verify that the resources have been created successfully in your Google Cloud Console.

## Cost Estimation

The estimated cost per day for the infrastructure components is as follows:

- VPC Network: Free
- Subnets: Free
- Cloud Router: $0.05 per hour
- VPN Gateway: $0.05 per hour
- Firewall Rules: Free
- Cloud Load Balancer: $0.025 per hour
- Instance Groups: Depends on the instance type and usage
- Cloud Storage: $0.026 per GB per month
- Cloud SQL: $0.018 per hour (db-f1-micro)
- Cloud Pub/Sub: $0.40 per million messages
- Cloud Functions: $0.0000004 per GB-second
- Cloud CDN: $0.02 per GB
- Cloud DNS: $0.40 per zone per month

## Official Documentation

- [Google Cloud VPC](https://cloud.google.com/vpc/docs)
- [Google Cloud Router](https://cloud.google.com/router/docs)
- [Google Cloud VPN](https://cloud.google.com/vpn/docs)
- [Google Cloud Load Balancing](https://cloud.google.com/load-balancing/docs)
- [Google Cloud Storage](https://cloud.google.com/storage/docs)
- [Google Cloud SQL](https://cloud.google.com/sql/docs)
- [Google Cloud Pub/Sub](https://cloud.google.com/pubsub/docs)
- [Google Cloud Functions](https://cloud.google.com/functions/docs)
- [Google Cloud CDN](https://cloud.google.com/cdn/docs)
- [Google Cloud DNS](https://cloud.google.com/dns/docs)
