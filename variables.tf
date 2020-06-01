variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Runbook. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which the Runbook is created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists."
}

variable "automation_account_name" {
  type        = string
  description = "(Required) The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created."
}

variable "runbook_type" {
  type        = string
  description = "(Required) The type of the runbook - can be either Graph, GraphPowerShell, GraphPowerShellWorkflow, PowerShellWorkflow, PowerShell or Script."
}

variable "log_progress" {
  type        = bool
  description = "(Required) Progress log option."
}

variable "log_verbose" {
  type        = bool
  description = "log_verbose"
}

variable "description" {
  type        = string
  description = "(Optional) A description for this credential."
}

variable "publish_content_link" {
  description = "(Required) The uri of the runbook content."
}

variable "script_path" {
  type        = string
description = "Script file path"
}


variable "tags" {
  type        = map(string)
  description = "(Required) Specifies the supported Azure location where the resource exists."
}