provider "aws" {
  # access_key = "ACCESS_KEY_HERE"
  # secret_key = "SECRET_KEY_HERE"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-529fb82a" # Ubuntu 16.04 LTS
  instance_type = "t2.micro"
}
