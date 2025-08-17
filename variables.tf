variable "name" {
  description = "The name of the Virtual WAN to be provisioned."
  type        = string
}

variable "location" {
  description = "The location/region where the Virtual WAN will be created."
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group where the Virtual WAN will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Virtual WAN."
  type        = map(string)
  default     = {}
}

variable "disable_vpn_encryption" {
  description = "Whether to disable VPN encryption for the Virtual WAN."
  type        = bool
  default     = false
}

variable "allow_branch_to_branch_traffic" {
  description = "Whether to allow branch-to-branch traffic for the Virtual WAN."
  type        = bool
  default     = true
}

variable "office365_local_breakout_category" {
  description = "The Office 365 local breakout category for the Virtual WAN."
  type        = string
  default     = "None"
}

variable "type" {
  description = "The type of the Virtual WAN (e.g., 'Standard', 'Basic')."
  type        = string
  default     = "Standard"
}