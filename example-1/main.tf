provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-7c412f13" # Ubuntu 16.04 LTS
  instance_type = "t2.micro"
}
