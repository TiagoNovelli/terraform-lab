resource "aws_s3_bucket" "novo" {
  tags = {
    "environment" = "dev"
  }
}