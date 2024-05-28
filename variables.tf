# variables for the module
variable "public_subnet_id" {
  description = "The ID of the public subnet where the NAT Gateway will be deployed"
  type        = string
}

variable "project_name" {
  description = "Name of the project or environment"
  type        = string
}
