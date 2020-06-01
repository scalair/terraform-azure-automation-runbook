# Terraform Azure automation Runbook

Create a runbook in an existing autmation account. This module is tested with:
- Azure Provider 2.12.0
- Terrafrom 12.23

This module creates the following resources:
- terraform-azure-automation-runbook


## How to use it

```hcl
module "vm-automation-runbook" {
  source  = "github.com/scalair/terraform-azure-automation-runbook"
  version = "v1.0.0"

  name = "runbook_name"
  resource_group_name     = "rg-name"
  location                = "azure_region"

  automation_account_name = "automation_account_name"
  runbook_type            = "PowerShell"
  log_progress            = true
  log_verbose             = true
  description             = "Runbook to renew certificates"
  script_path             = "path_to_the_pwershell_script"
  publish_content_link    = "https://www.microsoft.com"
  tags = {
    terraform = "true"
  }
}
```