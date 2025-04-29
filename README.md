# Google Cloud Architecture Terraform Configuration

This repository contains the Terraform configuration for deploying the Google Cloud Architecture as specified in the diagram: [Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png).

## Components

The following components will be created:
1. VPC
2. Subnets
3. Firewall Rules
4. Cloud Router
5. VPN Gateway
6. Cloud NAT
7. Load Balancer
8. Instance Groups
9. Cloud Storage
10. Cloud SQL
11. Cloud Pub/Sub
12. Cloud Functions
13. Cloud Run
14. Cloud IAM

## Deployment Steps

1. Clone the repository:
    ```sh
    git clone https://github.com/softengrahmed/test.git
    cd test
    ```

2. Checkout the branch:
    ```sh
    git checkout terraform-google-latest-1698787200000_v1
    ```

3. Initialize Terraform:
    ```sh
    terraform init
    ```

4. Create a `terraform.tfvars` file with the following contents:
    ```hcl
    project_id = "your-project-id"
    region     = "your-region"

    subnets = [
      {
        name          = "subnet-1"
        ip_cidr_range = "10.0.1.0/24"
        region        = "your-region"
      },
      {
        name          = "subnet-2"
        ip_cidr_range = "10.0.2.0/24"
        region        = "your-region"
      }
    ]

    roles = [
      {
        name    = "roles/editor"
        members = ["user:your-email@example.com"]
      }
    ]
    ```

5. Apply the Terraform configuration:
    ```sh
    terraform apply
    ```

## Cost Estimation

The cost of the infrastructure will vary based on usage and the specific configurations. Below is an estimation of the daily cost for each resource:

- VPC: $0.01/day
- Subnets: $0.01/day per subnet
- Firewall Rules: $0.01/day per rule
- Cloud Router: $0.05/day
- VPN Gateway: $0.10/day
- Cloud NAT: $0.05/day
- Load Balancer: $0.10/day
- Instance Groups: $0.20/day per instance
- Cloud Storage: $0.02/day per GB
- Cloud SQL: $0.50/day per instance
- Cloud Pub/Sub: $0.01/day per topic
- Cloud Functions: $0.10/day per function
- Cloud Run: $0.10/day per service
- Cloud IAM: $0.01/day per role

Please note that these are rough estimates and actual costs may vary.

## Branch Information

The code is stored in the branch: `terraform-google-latest-1698787200000_v1`.

---

### Official Support Documentation

For detailed information on each component, please refer to the official Google Cloud documentation:

- [VPC](https://cloud.google.com/vpc/docs)
- [Subnets](https://cloud.google.com/vpc/docs/subnets)
- [Firewall Rules](https://cloud.google.com/vpc/docs/firewalls)
- [Cloud Router](https://cloud.google.com/router/docs)
- [VPN Gateway](https://cloud.google.com/vpn/docs)
- [Cloud NAT](https://cloud.google.com/nat/docs)
- [Load Balancer](https://cloud.google.com/load-balancing/docs)
- [Instance Groups](https://cloud.google.com/compute/docs/instance-groups)
- [Cloud Storage](https://cloud.google.com/storage/docs)
- [Cloud SQL](https://cloud.google.com/sql/docs)
- [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs)
- [Cloud Functions](https://cloud.google.com/functions/docs)
- [Cloud Run](https://cloud.google.com/run/docs)
- [Cloud IAM](https://cloud.google.com/iam/docs)
