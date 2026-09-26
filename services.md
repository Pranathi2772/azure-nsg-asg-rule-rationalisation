# Azure Services Used

This project uses the following Microsoft Azure services.

## Azure Services

| Azure Service | Purpose |
|---------------|---------|
| Resource Group | Organizes all Azure resources in one place. |
| Virtual Network (VNet) | Creates a private network for the application. |
| Subnets | Separates Web, Application, and Database layers. |
| Application Security Groups (ASG) | Groups virtual machines based on application roles. |
| Network Security Group (NSG) | Controls inbound and outbound network traffic. |
| Virtual Machines (VMs) | Hosts the Web, Application, and Database servers. |
| Azure CLI | Automates resource creation using shell scripts. |

## Benefits of Using ASGs

- Simplifies NSG rule management.
- Improves readability of security rules.
- Reduces duplicate firewall rules.
- Makes the network architecture scalable.
