resource "azurerm_network_interface" "mynic" {
    for_each = var.nic_config
    name = each.value.nic_name
    location = each.value.network_interface_location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
      name = "internal"
      subnet_id = data.azurerm_subnet.mysubnet[each.key].id
      private_ip_address_allocation = "Dynamic"
     }
}