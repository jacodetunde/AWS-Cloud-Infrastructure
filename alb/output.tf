output "alb_dns_name" {
  value = aws_lb.LB.dns_name
}

output "alb_arn" {
  value = aws_lb.LB.arn
}