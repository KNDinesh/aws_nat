variable "public_subnet_id" {
  description = "The ID of the public subnet where the NAT Gateway will be deployed"
  type        = string
  default     = "subnet-01968f16b673877b9"
}

variable "project_name" {
  description = "Name of the project or environment"
  type        = string
}
