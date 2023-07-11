variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}

variable "create_default_route" {
  type = bool
  default = false
}

# variable "vpc_cidr_block" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "public_subnet_cidr_blocks" {
#   description = "CIDR blocks for public subnets"
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
# }

# variable "private_subnet_cidr_blocks" {
#   description = "CIDR blocks for private subnets"
#   type        = list(string)
#   default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
# }

# variable "availability_zones" {
#   description = "Availability zones"
#   type        = list(string)
#   default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }
