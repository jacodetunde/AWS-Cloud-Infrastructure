output "table_name" {
  description = "Name of the created DynamoDB table"
  value       = aws_dynamodb_table.dynamodb.name
}
