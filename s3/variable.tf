variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "status_enabled" {
  description = "Status for S3 bucket versioning"
  type        = string
}




# variable "bucket_name" {
#   type    = string
#   default = ""
# }

# variable "permissions" {
#   type    = list(object({
#     id          = string
#     type        = string
#     permissions = list(string)
#   }))
#   default = []
# }

# variable "lifecycle_rules" {
#   type    = list(object({
#     id      = string
#     prefix  = string
#     status  = string
#     days    = number
#     actions = list(string)
#   }))
#   default = []
# }
