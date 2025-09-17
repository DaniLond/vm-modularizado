resource "azurerm_resource_group" "this" {
  name     = "${var.prefix}-resources"
  location = var.location
}

