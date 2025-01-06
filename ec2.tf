

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
#configuring an S3 backend
terraform {
 backend "s3" {
  bucket = "my-terraform-state-bucket"
  key = "state"
  region = "us-east-1"
  }
} 
#integrating AWS secrets manager with terraform.
data "aws_secretsmanager_secret_version" "my_secret" {
 secret_id = "my_secret_name"
  }

resource "aws_db_instance" "my_database" {
 #other configuration...
 password = data.aws_secretsmanager_secret_version.my_secret.secret_string
}
