module "rg" {
    source = "../module/azurerm_resource_group"
    rg_config = var.rgs
  }

  module "vnets"{
    depends_on = [ module.rg ]
    source = "../module/azurerm_virtual_network"
    vnet_config = var.vnets
  }

  module "subnets" {
    depends_on = [ module.rg,module.vnets ]
    source = "../module/azurerm_subnet"
    subnet_config = var.subnets
  }
  
  module "pip" {
    depends_on = [ module.rg,module.vnets,module.subnets ]
    source = "../module/azurerm_public_ip"
    ip_config = var.pips
  }

  module "nic"{
    depends_on = [ module.subnets,module.pip ]
    source = "../module/azurerm_nic"
    nic_config = var.nics
  }

  module "myvms" {
    depends_on = [ module.rg,module.vnets,module.subnets,module.pip,module.nic ]
    source = "../module/azurerm_virtual_machine"
    vm_config = var.vms
  }

  module "sqlservers" {
    depends_on = [ module.rg ]
    source = "../module/azurerm_sql_server"
    sqlserver_config = var.sqlservers
  }

  module "sqldata" {
    depends_on = [ module.rg, module.sqlservers ]
    source = "../module/azurerm_sql_database"
    sql_database = var.sqldatabases
    }