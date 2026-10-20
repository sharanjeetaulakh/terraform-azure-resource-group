# Azure Resource Group — Terraform

[![Azure](https://img.shields.io/badge/Azure-Cloud%20Infrastructure-0078D4?logo=microsoftazure&logoColor=white)](https://www.google.com/search?q=Microsoft+Azure+Cloud+Infrastructure)  [![Terraform](https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-7B42BC?logo=terraform&logoColor=white)](https://www.google.com/search?q=Terraform+Infrastructure+as+Code)  [![GitHub](https://img.shields.io/badge/Version%20Control-GitHub-181717?logo=github&logoColor=white)](https://www.google.com/search?q=GitHub+Version+Control)

## 📌 Project Overview

This repository contains Terraform configuration to create and manage **Azure Resource Groups** using Infrastructure as Code (IaC).

The configuration uses Terraform variables and `for_each` to support reusable resource group creation.

This repository is part of a modular Azure infrastructure project for a Loan Management System.

## 🏗️ Architecture

The project separates Azure infrastructure into individual Terraform repositories:

- Resource Group
- Storage Account
- Storage Container
- Blob Storage

The Resource Group provides a logical container for organizing and managing related Azure resources.

## ☁️ Azure Configuration

| Property | Value |
|---|---|
| Cloud Provider | Microsoft Azure |
| Resource | Azure Resource Group |
| Infrastructure as Code | Terraform |
| Example Resource Group | `rg-lms-idn-dev-01` |
| Region | Southeast Asia |

*Verify the resource group name and region against your actual Terraform configuration.*

## 📂 Repository Structure

```text
terraform-azure-resource-group/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── provider.tf
├── .gitignore
└── README.md
```

*Adjust the structure to match your actual repository files.*

## ⚙️ Terraform Configuration

### 1. Resource Group Resource

Terraform uses the `azurerm_resource_group` resource to create an Azure Resource Group.

Example:

```hcl
resource "azurerm_resource_group" "rg" {
  for_each = var.rgs

  name     = each.value.name
  location = each.value.location
}
```

This example assumes `var.rgs` is a map containing resource group names and locations.

### 2. Variables

Variables separate resource group configuration from the resource definition.

Example variable values may include:

- Resource group name
- Azure region

This makes the configuration easier to reuse across environments.

### 3. `for_each`

The `for_each` meta-argument allows Terraform to create multiple Resource Groups from a map of configuration values.

**Benefits:**

- Avoids repeating resource blocks.
- Supports multiple resource groups.
- Improves code reusability.
- Simplifies configuration management.

## 🚀 Deployment Steps

### Step 1: Login to Azure

```powershell
az login
```

### Step 2: Initialize Terraform

```powershell
terraform init
```

### Step 3: Validate Configuration

```powershell
terraform validate
```

### Step 4: Review the Execution Plan

```powershell
terraform plan
```

### Step 5: Apply Configuration

```powershell
terraform apply
```

Review the proposed changes and approve the plan when prompted.

## 🔍 Verify Deployment in Azure Portal

1. Open the Azure Portal.
2. Search for **Resource groups**.
3. Locate the configured Resource Group.
4. Open it to verify the region and resource details.
5. Confirm that the related Azure resources are organized under the expected Resource Group.

## 🔐 Best Practices

- Use meaningful and consistent resource naming.
- Use variables instead of hardcoding resource properties.
- Use `for_each` for reusable configurations.
- Organize resources by application and environment.
- Apply appropriate Azure RBAC permissions.
- Review `terraform plan` before applying changes.
- Never commit credentials or secrets to GitHub.

## 🎯 Key Learnings

- Creating Azure Resource Groups using Terraform.
- Using variables to manage configuration.
- Using `for_each` to manage multiple resource groups.
- Organizing Azure resources for a modular infrastructure project.
- Following Infrastructure as Code best practices.

## 👩‍💻 Author

**Sharanjeet Kaur**

Azure | Terraform | Azure DevOps | Infrastructure as Code

## 🏷️ Tags

`Azure` `Terraform` `Resource Group` `for_each` `IaC` `DevOps` `Automation`
