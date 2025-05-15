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

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "vpc_security_group_ids" {
  default = ["sg-0c2fba399b8205ad3"]
}

variable "zone_id" {
  default = "Z06148791BA1B5R39EUKB"
}