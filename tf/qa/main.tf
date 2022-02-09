provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# resource "aws_sqs_queue" "terraform_queue" {
#   name                      = "harness-evaluation-queue"
#   delay_seconds             = 90
#   max_message_size          = 2048
#   message_retention_seconds = 86400
#   receive_wait_time_seconds = 10
  
#   tags = {
#     Environment = "QA"
#   }
# }

resource "aws_s3_bucket" "b" {
  bucket = "harness-evaluation-bucket-fhdjkfh"
  acl    = "private"

  tags = {
    Name        = "harness-evaluation-bucket--qa-fhdjkfh"
    Environment = "QA"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.b.name
}
