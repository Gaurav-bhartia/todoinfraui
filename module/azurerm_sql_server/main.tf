resource "azurerm_mssql_server" "mysqlserver" {
    for_each = var.sqlserver_config
  name                         = each.value.sqlserver_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.resource_group_location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  minimum_tls_version          = "1.2"
 }