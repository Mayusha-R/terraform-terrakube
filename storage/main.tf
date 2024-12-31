resource "azurerm_storage_account" "main_storage" {
  name                     = var.storage_name
  resource_group_name      = var.resource_gn
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = var.tags
}

resource "azurerm_storage_container" "contaner01" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.main_storage.name
  container_access_type = "private"
}

