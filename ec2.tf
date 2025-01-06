

#main.tf
resource "aws_s3_bucket" "my_bucket" {
bucket = "my-unique-bucket-name"
acl = "private"
}

#variables 
variable "region" {
description = "The AWS region"
default = "us-east-1"
}
#output 
output "bucket_name" {
value = aws_s3_bucket.my_bucket.id
}
