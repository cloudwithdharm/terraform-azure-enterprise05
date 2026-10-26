# Azure Infrastructure Provisioning Using Terraform

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision modular infrastructure on Microsoft Azure.

## Architecture

The infrastructure includes:

- **Resource Group:** Organizes Azure resources.
- **Virtual Network:** Provides network isolation.
- **Subnets:** Separate frontend, backend, and database workloads.
- **Network Security Groups:** Control network traffic.
- **Virtual Machines:** Two Linux VMs.
- **Azure Database for PostgreSQL Flexible Server:** Managed database service with private DNS integration.
- **Azure Key Vault:** Centralized secrets management.
- **User-Assigned Managed Identity:** Identity-based access management.

## Technology Stack

- Microsoft Azure
- Terraform / HCL
- Git and GitHub
- Linux

## Terraform Project Structure

```text
terraform-azure-enterprise101826/
├── live/
│   └── dev/
│       ├── main.tf
│       ├── providers.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── outputs.tf
├── modules/
│   ├── network/
│   ├── compute/
│   ├── security/
│   └── postgresql/
├── .gitignore
└── README.md
```

## Deployment Steps

1. Install Terraform and Azure CLI.
2. Authenticate with Azure.
3. Navigate to `live/dev`.
4. Initialize Terraform:

   `terraform init`

5. Validate the configuration:

   `terraform validate`

6. Review the deployment plan:

   `terraform plan`

7. Apply the infrastructure:

   `terraform apply`

## Security Notes

- Do not commit credentials, private keys, Terraform state files, or sensitive variable files.
- Use Azure Key Vault and managed identities where appropriate.
- Review network security rules before exposing services publicly.

## Project Status

Terraform successfully provisioned 22 resources in the development environment. Application connectivity and end-to-end security validation are separate verification steps.
