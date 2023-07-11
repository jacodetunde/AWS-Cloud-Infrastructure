# resource "aws_s3_bucket" "my_bucket" {
#   bucket = var.bucket_name

#   # Adjust the other bucket properties as needed
# }


## create an S3 bucket by using the aws_s3_bucket resource 

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  force_destroy = true

}

 ## use the aws_s3_bucket_versioning resource to enable versioning on the S3 
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.status_enabled
  }
}

## use the aws_s3_bucket_server_side_encryption_configuration resource 
resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}