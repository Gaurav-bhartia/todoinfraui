resource "azurerm_linux_virtual_machine" "myvirtualm" {
  for_each = var.vm_config
  name = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location = each.value.resource_group_location
  size = each.value.size
  admin_username = each.value.admin_username  
  admin_password = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.mynic[each.key].id]

os_disk {
    caching ="ReadWrite"
    storage_account_type ="Standard_LRS"
}  

source_image_reference {
      publisher = each.value.publisher
      offer = each.value.offer
      sku = each.value.sku
      version ="latest"
} 
}