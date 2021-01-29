resource "aws_s3_bucket" "app_bucket" {
  bucket = var.BUCKET_NAME[terraform.workspace]
  acl    = "private"

  tags = {
    Name        = var.BUCKET_NAME[terraform.workspace]
    Environment = terraform.workspace
  }
}
