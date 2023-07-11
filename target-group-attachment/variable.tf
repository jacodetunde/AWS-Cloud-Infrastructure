variable "target_group_attachments" {
  type = map(object({
    target_group_arn = string
    target_id        = string
    port             = number
  }))
}
