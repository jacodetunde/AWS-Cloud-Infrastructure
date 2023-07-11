variable "role_name" {
  type    = string
  default = ""
}

variable "assume_role_policy" {
  type    = string
  default = ""
}

variable "policy_arns" {
  type    = list(string)
  default = []
}
