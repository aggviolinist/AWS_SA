terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "my-favourite-bucko" {
}

resource "aws_s3_object" "object-in-my-bucko" {
  bucket = aws_s3_bucket.my-favourite-bucko.id
  key    = "myfile.txt"
  source = "myfile.txt"

  
  etag = filemd5("myfile.txt")
  }