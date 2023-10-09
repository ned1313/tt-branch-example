provider "azurerm" {
  features {}
  use_oidc = true
}

variable "prefix" {
  type        = string
  description = "(Required) The prefix which should be used for all resources in this example"
}

variable "location" {
  type        = string
  description = "(Required) The Azure Region in which all resources in this example should be created."
}

variable "environment" {
  type        = string
  description = "(Required) The environment in which all resources in this example should be created."
}

resource "azurerm_resource_group" "main" {
  location = var.location
  name     = "${var.prefix}-branch"

  tags = {
    environment = var.environment
  }
}