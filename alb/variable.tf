variable "lb_name" {
  type    = string
}

variable "internal-option" {
  type    = bool
  default = false
}

variable "lb_type" {
  type    = string
  default = "application"
}

variable "security_groups" {
  type    = string
  default = null
}

variable "subnets-id" {
  type    = list(string)
  default = null
}

variable "deletion_protection" {
  type    = bool
  default = null
}

variable "alb-tags" {
  type    = map(string) 
}
