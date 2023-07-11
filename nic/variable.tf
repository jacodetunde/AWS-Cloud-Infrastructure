variable "subnet_cidr" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)

}

variable "sg-id" {
  description = "Security group ID"
  type        = string

}

variable "nic_count" {
  description = "value"
  type = number
  
}
