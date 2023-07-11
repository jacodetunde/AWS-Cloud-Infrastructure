resource "aws_dynamodb_table" "dynamodb" {
  name           = var.dynamo_name
  hash_key       = "LockID"
  read_capacity  = 3
  write_capacity = 3

  attribute {
    name = "LockID"
    type = "S"
  }

#   lifecycle {
#     prevent_destroy = var.prevent_destroy
#   }
}
