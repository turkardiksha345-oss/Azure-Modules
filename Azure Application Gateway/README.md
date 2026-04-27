# Azure Application Gateway Module

This module creates an Azure Application Gateway with basic configuration.

## Variables

- `app_gateway_name`: Name of the Application Gateway
- `resource_group_name`: Name of the resource group
- `location`: Azure region
- `app_gateway_sku_name`: SKU name (e.g., Standard_v2)
- `app_gateway_sku_tier`: SKU tier (e.g., Standard_v2)
- `app_gateway_capacity`: Number of instances
- `app_gateway_subnet_id`: Subnet ID for the gateway
- `app_gateway_public_ip_id`: Public IP ID for the gateway
- Other optional variables for customization

## Outputs

- `app_gateway_id`: ID of the Application Gateway
- `app_gateway_name`: Name of the Application Gateway
- `app_gateway_public_ip`: Public IP address ID