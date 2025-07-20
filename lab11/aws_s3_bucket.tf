resource "aws_s3_bucket" "mybucket" {
  count = 2
  bucket = "bucket-name-tiago-novelli-2025-${count.index}"
  tags = {
    "environment" = "dev"
  }
}