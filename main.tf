provider "azurerm" {
  features {}
  disable_correlation_request_id = true
}

data "azurerm_resource_group" "RG_Creation" {
  name = var.RG
}

resource "azurerm_vmware_private_cloud" "Ricky_Test" {
  name                = var.SDDC_Name
  resource_group_name = data.azurerm_resource_group.RG_Creation.name
  location            = data.azurerm_resource_group.RG_Creation.location
  sku_name            = "av36"

  management_cluster {
    size = 3
  }

  network_subnet_cidr         = var.MGMT_CIDR
  internet_connection_enabled = true 
}

