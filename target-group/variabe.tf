variable "target_groups" {
  type = map(object({
    name        = string
    port        = number
    protocol    = string
    target_type = string
    vpc_id      = string

    health_check = object({
      healthy_threshold   = number
      unhealthy_threshold = number
      timeout             = number
      interval            = number
      path                = string
      port                = number
    })
  }))
}
