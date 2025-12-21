resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_config
  name                = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.resource_group_location
  address_space       = each.value.address_space
}
