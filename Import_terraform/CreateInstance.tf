provider "aws" {

  region     = "ap-south-1"
  access_key = "AKIAUICWUDPZTVK2LC6W"
  secret_key = "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"


}

resource "aws_instance" "ec2-import-instance" {

  ami                         = "ami-072ec8f4ea4a6f2cf"
  associate_public_ip_address = true
  availability_zone           = "ap-south-1a"

  instance_type = "t2.micro"

  security_groups = [
    "launch-wizard-3",
  ]

  tags = {
    "Name" = "import-test-instance"
  }

}

resource "aws_security_group" "my-import-sg" {
  arn         = "arn:aws:ec2:ap-south-1:292239449075:security-group/sg-03458dd27fb5914b2"
  description = "terraform import security group - test file "
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  id = "sg-03458dd27fb5914b2"
  ingress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  name     = "my-import-sg"
  owner_id = "292239449075"
  tags = {
    "test-sg" = "importsg"
  }
  tags_all = {
    "test-sg" = "importsg"
  }
  vpc_id = "vpc-01a2cc5130286892b"


}