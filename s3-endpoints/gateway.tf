resource "aws_vpc_endpoint" "s3" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.s3"

  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint_route_table_association" "endpoint_association" {
  count            = length(var.route_table_ids)
  route_table_id   = var.route_table_ids[count.index]
  vpc_endpoint_id  = aws_vpc_endpoint.s3.id
}
