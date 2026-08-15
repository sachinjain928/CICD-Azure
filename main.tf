resource "azurerm_virtual_network" "Virtual_Nw" {

  for_each = var.VN


  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  address_space       = each.value.address_space

}



resource "azurerm_storage_account" "sachinfirststorageaccount8" {
  name                     = "sjfirststorageaccount8"
  resource_group_name      = "kml_rg_main-56c0d75070cb4c3d"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "sachincontainer" {
  name = "sachin-container3"
  # resource_group_name   = azurerm_resource_group" "sachin-RG-STA-2.name
  storage_account_id    = azurerm_storage_account.sachinfirststorageaccount8.id
  container_access_type = "private"
}
