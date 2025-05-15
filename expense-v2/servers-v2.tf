resource "aws_instance" "ec2-nodes" {
  for_each = var.components
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-0c2fba399b8205ad3"]

  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}

# frontend = {
#      instance_type = "t3.small"
#    }

# In above input key is frontend and value is {instance_type = "t3.small"}
# since its called by for_each, each prefix is needed like each.key and each.value