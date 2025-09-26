# test
test repository for github codemie testing

## Google Cloud Architecture

![Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png)

### Components Created
1. VPC
2. Subnets
3. Firewall Rules
4. Cloud Router
5. Cloud NAT
6. VPN Gateway
7. Interconnect
8. Cloud Load Balancer
9. Managed Instance Groups
10. Cloud Storage
11. Cloud SQL
12. Cloud Pub/Sub
13. Cloud Functions
14. Cloud Run
15. Cloud IAM

### Deployment Steps
1. Clone the repository
   ```sh
   git clone https://github.com/softengrahmed/test.git
   ```
2. Checkout to the branch `terraform-google-latest-1698883200000_v7`
   ```sh
   git checkout terraform-google-latest-1698883200000_v7
   ```
3. Initialize Terraform
   ```sh
   terraform init
   ```
4. Apply the Terraform configuration
   ```sh
   terraform apply
   ```

### Cost Estimation

| Component                  | Estimated Cost per Day |
|----------------------------|------------------------|
| VPC                        | $0.01                  |
| Subnets                    | $0.01                  |
| Firewall Rules             | $0.01                  |
| Cloud Router               | $0.05                  |
| Cloud NAT                  | $0.05                  |
| VPN Gateway                | $0.10                  |
| Interconnect               | $0.10                  |
| Cloud Load Balancer        | $0.10                  |
| Managed Instance Groups    | $0.20                  |
| Cloud Storage              | $0.05                  |
| Cloud SQL                  | $0.20                  |
| Cloud Pub/Sub              | $0.05                  |
| Cloud Functions            | $0.05                  |
| Cloud Run                  | $0.05                  |
| Cloud IAM                  | $0.01                  |

Total Estimated Cost per Day: $1.09
