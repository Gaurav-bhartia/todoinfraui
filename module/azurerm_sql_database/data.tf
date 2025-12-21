data "azurerm_mssql_server" "mysql" {
    for_each = var.sql_database
  name                = each.value.sqlserver_name
  resource_group_name = each.value.resource_group_name
}

