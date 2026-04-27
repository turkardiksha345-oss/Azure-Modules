# Azure Services through Terraform

This Terraform project provisions a complete Azure infrastructure setup including networking, compute, storage, monitoring, and load balancing resources. It creates a demo environment with a virtual machine accessible via SSH, along with monitoring, alerting, and Application Gateway capabilities.

## Architecture Overview

The project deploys the following Azure resources:

### 1. Resource Group
- **Name**: Configurable (default: demo-rg)
- **Location**: Configurable (default: Central India)
- Serves as the container for all other resources

### 2. Virtual Network (VNet)
- **Name**: Configurable (default: demo-vnet)
- **Address Space**: Configurable (default: 10.0.0.0/16)
- **Subnets**:
  - VM Subnet: Configurable (default: demo-subnet, 10.0.1.0/24)
  - Application Gateway Subnet: Configurable (default: appgw-subnet, 10.0.2.0/24)
- Includes public IP addresses and network interfaces

### 3. Network Security Group (NSG)
- **Name**: Configurable (default: demo-nsg)
- **Rules**:
  - Allow SSH (port 22) from anywhere
  - Allow HTTP (port 80) from anywhere
  - Allow HTTPS (port 443) from anywhere

### 4. Virtual Machine
- **Name**: Configurable (default: demo-vm)
- **OS**: Ubuntu Server 22.04 LTS (Canonical)
- **Size**: Configurable (default: Standard_DS1_v2)
- **Admin Username/Password**: Configurable
- Connected to the VNet with public IP for external access

### 5. Blob Storage
- **Storage Account**: Configurable (must be globally unique, default: demostorageaccount)
- **Container**: Configurable (default: demo-container, private access)
- **Blob**: Configurable (default: sample-file.zip)

### 6. Azure Monitor
- **Log Analytics Workspace**: Configurable (default: demo-law)
- **Action Group**: Configurable (default: demo-action-group)
- **Metric Alert**: Configurable (default: high-cpu-alert, CPU > 50%)
- **Alert Email**: Configurable

### 7. Application Gateway
- **Name**: Configurable (default: demo-appgw)
- **SKU**: Configurable (default: Standard_v2)
- **Capacity**: Configurable (default: 2)
- Provides load balancing and web traffic management
- **Log Analytics Workspace**: demo-law (for log collection)
- **Action Group**: demo-action-group (email notifications)
- **Metric Alert**: high-cpu-alert (triggers when VM CPU > 50% for 5 minutes)
- **Alert Email**: dikshaturkat2022@gmail.com

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) or Azure account with appropriate permissions
- Azure subscription with sufficient quota for the resources

## Authentication

Ensure you are authenticated with Azure. You can use:

```bash
az login
```

Or set environment variables for service principal authentication.

## Deployment

1. **Clone or navigate to the project directory**

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Review the plan**:
   ```bash
   terraform plan
   ```

4. **Apply the configuration**:
   ```bash
   terraform apply
   ```

5. **Confirm** by typing `yes` when prompted.

## Important Notes

- **Storage Account Name**: The default storage account name must be globally unique. Update the variable if it conflicts.
- **Security**: Change default passwords in production environments.
- **Costs**: This setup includes billable resources. Monitor usage and destroy when not needed.
- **Blob Upload**: Ensure the blob file exists in the Blob Storage directory before applying.
- **Variables**: All resource names and configurations are now centralized in the root `variable.tf` for easy customization.

## Outputs

After deployment, Terraform will output:
- Resource Group name and location
- Virtual Machine public IP
- Storage account details
- Log Analytics Workspace details

## Cleanup

To destroy all resources:

```bash
terraform destroy
```

## Customization

Modify variables in the respective `variable.tf` files or create a `terraform.tfvars` file to customize:
- Azure region
- VM size and credentials
- Network address spaces
- Storage account names
- Alert thresholds and email addresses

## Project Structure

```
Azure-Modules/
├── README.md
├── main.tf
├── output.tf
├── variable.tf
├── Azure Application Gateway/
│   ├── app-gateway.tf
│   ├── output.tf
│   ├── variable.tf
│   └── README.md
├── Azure Monitor/
│   ├── azure-monitor.tf
│   ├── output.tf
│   └── variable.tf
├── Blob Storage/
│   ├── blob-storage.tf
│   ├── output.tf
│   └── variable.tf
├── Resource group/
│   ├── output.tf
│   ├── resource-group.tf
│   └── variable.tf
├── Security group/
│   ├── NSG.tf
│   ├── output.tf
│   └── variable.tf
├── Virtual Network/
│   ├── output.tf
│   ├── variable.tf
│   └── VNet.tf
└── virtual machine/
    ├── output.tf
    ├── variable.tf
    └── vm.tf
```

Each directory contains Terraform configuration files organized by resource type. The root `variable.tf` contains all configurable variables for easy management.
