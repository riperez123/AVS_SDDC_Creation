provider "azurerm" {
  features {}
  disable_correlation_request_id = true
}

data "azurerm_resource_group" "RG_Creation" {
  name = "avs-sddc-shared-uks-04-rg"
}

resource "azurerm_vmware_private_cloud" "Ricky_Test" {
  name                = "AVS-SA-UKS-RickyTest02"
  resource_group_name = data.azurerm_resource_group.RG_Creation.name
  location            = data.azurerm_resource_group.RG_Creation.location
  sku_name            = "av36"

  management_cluster {
    size = 3
  }

  network_subnet_cidr         = "10.34.0.0/22"
  internet_connection_enabled = true 
}

