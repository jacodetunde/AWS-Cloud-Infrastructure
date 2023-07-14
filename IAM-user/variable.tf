variable "users" {
  type        = list(string)
  description = "List of IAM user names"
}

variable "policies" {
  type        = list(string)
  description = "List of IAM policy ARNs"
}

