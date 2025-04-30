# test
# Google Cloud Architecture Deployment

This repository contains Terraform code to deploy a Google Cloud architecture based on the diagram provided [here](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png).

## Components
- VPC
- Subnets
- Firewall Rules
- Cloud Router
- VPN Gateway
- Interconnect
- Cloud Load Balancer
- Managed Instance Groups
- Cloud Storage
- Cloud SQL
- Cloud DNS
- Cloud Pub/Sub
- Cloud Functions
- Cloud Run
- Cloud Monitoring
- Cloud Logging

## Deployment Steps
1. Clone the repository.
2. Navigate to the directory containing the Terraform code.
3. Initialize Terraform:
    ```sh
    terraform init
    ```
4. Review the plan:
    ```sh
    terraform plan
    ```
5. Apply the plan:
    ```sh
    terraform apply
    ```

## Cost Estimation
The cost of the infrastructure depends on the usage and the region. Below is an estimation of the daily cost for each resource:

- VPC: Free
- Subnets: Free
- Firewall Rules: Free
- Cloud Router: $0.05 per hour
- VPN Gateway: $0.05 per hour
- Interconnect: $0.10 per hour
- Cloud Load Balancer: $0.025 per hour
- Managed Instance Groups: $0.10 per hour per instance
- Cloud Storage: $0.026 per GB per month
- Cloud SQL: $0.10 per hour
- Cloud DNS: $0.40 per million queries
- Cloud Pub/Sub: $0.40 per million messages
- Cloud Functions: $0.0000004 per function invocation
- Cloud Run: $0.000024 per vCPU-second, $0.0000025 per GB-second
- Cloud Monitoring: $0.258 per GB of logs ingested
- Cloud Logging: $0.50 per GB of logs stored

## Notes
- The costs mentioned above are approximate and can vary based on actual usage and region.
- Ensure you have the necessary permissions and quotas in your Google Cloud account to deploy the resources.

## Support Documentation
For detailed information on each component, refer to the official Google Cloud documentation:
- [VPC](https://cloud.google.com/vpc/docs)
- [Subnets](https://cloud.google.com/vpc/docs/subnets)
- [Firewall Rules](https://cloud.google.com/vpc/docs/firewalls)
- [Cloud Router](https://cloud.google.com/router/docs)
- [VPN Gateway](https://cloud.google.com/vpn/docs)
- [Interconnect](https://cloud.google.com/interconnect/docs)
- [Cloud Load Balancer](https://cloud.google.com/load-balancing/docs)
- [Managed Instance Groups](https://cloud.google.com/compute/docs/instance-groups)
- [Cloud Storage](https://cloud.google.com/storage/docs)
- [Cloud SQL](https://cloud.google.com/sql/docs)
- [Cloud DNS](https://cloud.google.com/dns/docs)
- [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs)
- [Cloud Functions](https://cloud.google.com/functions/docs)
- [Cloud Run](https://cloud.google.com/run/docs)
- [Cloud Monitoring](https://cloud.google.com/monitoring/docs)
- [Cloud Logging](https://cloud.google.com/logging/docs)

## Branch Information
The code is stored in the branch `terraform-google-latest-1698883200000`.
