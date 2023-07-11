variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "endpoint_tags" {
  description = "Tags for the VPC endpoint"
  type        = map(string)

}

variable "route_table_ids" {
  description = "List of route table IDs for association with the VPC endpoint"
  type        = list(string)
}