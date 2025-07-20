resource "aws_s3_bucket" "mybucket" {
  bucket = "tiago-novelli-bucket-0"
  tags = {
    "environment" = "dev"
  }
}