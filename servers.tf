resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0c2fba399b8205ad3"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0c2fba399b8205ad3"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0c2fba399b8205ad3"]

  tags = {
    Name = "backend"
  }
}