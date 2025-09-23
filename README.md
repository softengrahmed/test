# README

This repository contains Infrastructure as Code (IaC) for various cloud providers.

## Google Cloud Architecture

![Google Cloud Architecture](https://www.mydraw.com/NIMG.axd?i=Templates/NetworkDiagram/GoogleCloudArchitecture/GoogleCloudArchitecture.png)

### Deployment Steps

1. **Clone the Repository**
   ```sh
   git clone https://github.com/softengrahmed/test.git
   cd test
   ```

2. **Checkout the Branch**
   ```sh
   git checkout terraform-google-latest-1698883200000_v4
   ```

3. **Initialize Terraform**
   ```sh
   terraform init
   ```

4. **Review and Modify Variables**
   - Edit the `variables.tf` file to set the appropriate values for your Google Cloud project.
   - Alternatively, create a `terraform.tfvars` file to set the variable values.

5. **Apply the Terraform Configuration**
   ```sh
   terraform apply
   ```

### Components Created
- VPC
- Subnets (Multi-region)
- Cloud NAT
- Cloud Router
- VM Instances
- Load Balancer
- Cloud Storage
- Cloud SQL
- Cloud DNS
- IAM Roles and Policies

### Cost Estimation
The cost of the infrastructure will vary based on the usage and configuration of each component. Below is an approximate daily cost estimation for each resource:

- **VPC**: $0 (Free)
- **Subnets**: $0 (Free)
- **Cloud NAT**: ~$0.004 per GB of data processed
- **Cloud Router**: ~$0.05 per hour
- **VM Instances**: ~$0.01 to $0.10 per hour per instance (depending on machine type)
- **Load Balancer**: ~$0.025 per hour + data processing costs
- **Cloud Storage**: ~$0.026 per GB per month
- **Cloud SQL**: ~$0.08 to $0.50 per hour per instance (depending on instance type)
- **Cloud DNS**: ~$0.40 per managed zone per month
- **IAM Roles and Policies**: $0 (Free)

### Branch Information
- **Branch Name**: terraform-google-latest-1698883200000_v4
