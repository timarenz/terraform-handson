provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-331d3bd8" # Ubuntu 18.04
  instance_type = "t2.micro"
}
