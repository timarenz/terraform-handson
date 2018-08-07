provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-349fb84c" # Ubuntu 18.04
  instance_type = "t2.micro"
}
