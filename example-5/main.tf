provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-331d3bd8" # Ubuntu 18.04
  instance_type = "t2.micro"
}
