variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
}

variable "location" {
  default = "Central India"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  description = "VM admin password"
  type        = string
  sensitive   = true
}