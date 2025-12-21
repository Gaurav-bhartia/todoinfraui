rgs = {
  rg1 = {
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
  }
}

vnets = {
  vnet1 = {
    virtual_network_name    = "symbiosisvnet"
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
    address_space           = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name             = "frontend_subnet"
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
    virtual_network_name    = "symbiosisvnet"
    address_prefixes        = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name             = "Backend_subnet"
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
    virtual_network_name    = "symbiosisvnet"
    address_prefixes        = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    public_ip_name          = "frontendpip"
    resource_group_location = "Central India"
    resource_group_name     = "symbiosis"
  }
  pip2 = {
    public_ip_name          = "backendpip"
    resource_group_location = "Central India"
    resource_group_name     = "symbiosis"
  }
}

nics = {
  nic1 = {
    nic_name                   = "forntendnic"
    network_interface_location = "Central India"
    resource_group_name        = "symbiosis"
    subnet_name                = "frontend_subnet"
    virtual_network_name       = "symbiosisvnet"
  }
  nic2 = {
    nic_name                   = "backendnic"
    network_interface_location = "Central India"
    resource_group_name        = "symbiosis"
    subnet_name                = "backend_subnet"
    virtual_network_name       = "symbiosisvnet"
  }
}

vms = {
  vm1 = {
    vm_name                 = "frontendvm"
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
    size                    = "Standard_D2s_v3"
    admin_username          = "gaurav"
    admin_password          = "Password@123"
    publisher               = "Canonical"
    offer                   = "0001-com-ubuntu-server-jammy"
    sku                     = "22_04-lts"
    nic_name                = "forntendnic"
  }
  vm2 = {
    vm_name                 = "backendvm"
    resource_group_name     = "symbiosis"
    resource_group_location = "Central India"
    size                    = "Standard_D2s_v3"
    admin_username          = "gaurav"
    admin_password          = "Password@123"
    publisher               = "Canonical"
    offer                   = "0001-com-ubuntu-server-jammy"
    sku                     = "22_04-lts"
    nic_name                = "backendnic"
  }
}

sqlservers = {
  sqlserver1 = {
    sqlserver_name               = "symbiosissqlserver"
    resource_group_name          = "symbiosis"
    resource_group_location      = "Central India"
    administrator_login          = "gaurav"
    administrator_login_password = "Password@123"
  }
}

sqldatabases = {
  sqldatabases1 = {
    sql_database_name   = "symbiosissqldb"
    sqlserver_name      = "symbiosissqlserver"
    resource_group_name = "symbiosis"
  }
}
