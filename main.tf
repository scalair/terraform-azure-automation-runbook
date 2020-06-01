provider "azurerm" {
  features {}
}

data "local_file" "script_path" {
  filename = var.script_path
}


resource "azurerm_automation_runbook" "runbook" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type
  publish_content_link {
    uri = var.publish_content_link
  }
  content                 = data.local_file.script_path.content
  tags                    = var.tags
}