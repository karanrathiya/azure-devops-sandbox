resource "azurerm_resource_group" "karanrathiya" {
  name     = "${local.env}-sit-rg-sandbox-karanrathiya"
  location = local.region
  tags     = local.default_tags
}