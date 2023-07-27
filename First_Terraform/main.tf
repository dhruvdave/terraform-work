provider "aws" {
  region     = var.location
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-072ec8f4ea4a6f2cf"
  instance_type = var.instance_type

  tags = {
    Name = var.tag
  }

  count = var.instance_count

}

resource "aws_iam_user" "instance_users" {

  for_each = var.user_names
  name     = each.value

}

