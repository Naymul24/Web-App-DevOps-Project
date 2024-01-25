variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "networking-resource-group"
}

variable "location" {
  description = "The region for networking resources"
  type        = string
  default     = "UK South"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network (VNet)"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}