terraform {
  required_version = ">= 0.14.2"

  backend "s3" {
    bucket = "kakurenbo-terraform-state"
    region = "ap-northeast-1"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "route53_recode" {
  value = aws_route53_record.kakurenbo_club.name
}
