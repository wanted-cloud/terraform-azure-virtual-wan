/*
 * # wanted-cloud/terraform-azure-virtual-wan
 * 
 * Simple Terraform building block wrapping Azure Virtual WAN resource.
 */

resource "azurerm_virtual_wan" "this" {
  name                           = var.name
  resource_group_name            = data.azurerm_resource_group.this.name
  location                       = var.location != "" ? var.location : data.azurerm_resource_group.this.location
  allow_branch_to_branch_traffic = var.allow_branch_to_branch_traffic
  disable_vpn_encryption         = var.disable_vpn_encryption
  tags                           = merge(local.metadata.tags, var.tags)

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_virtual_wan"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_virtual_wan"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_virtual_wan"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_virtual_wan"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}