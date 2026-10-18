data "azurerm_resource_group" "existing" {
  name = "rg-lms-idn-dev-01"
}

resource "azurerm_resource_group" "resource_group" {
    for_each = var.rgs
    name=each.value.name
    location=each.value.location
 }

 