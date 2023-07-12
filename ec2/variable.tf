variable "instance_type" {
  description = "Instance type for the AWS EC2 instance"
  type        = string
}

variable "instance_count" {
  description = "Instance type for the AWS EC2 instance"
  type        = number
}

variable "ami" {
  description = "Instance type for the AWS EC2 instance"
  type        = string
}

variable "keypair" {
  description = "Name of the key pair to associate with the AWS EC2 instance"
  type        = string
}

variable "nic-id" {
  description = "The ID of the network interface to attach"
  type        = string
  default = null
}

variable "availability_zone" {
  description = "Availability zone for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

variable "sg-id" {
  description = "ID of the subnet"
  type        = list(string)
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = false
}

variable "instance_tags" {
  description = "Tags for the instance"
  type        = map(string)
  default     = {
    Name = "app-server"
  }
}

variable "iam_role" {
  description = "IAM role name"
  type        = string
 
}

