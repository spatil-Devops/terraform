variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

# list variable

variable "l" {
  default = [
    10,
    "hello",
    true
  ]
}

output "l" {
  value = var.l[2]
}

# map variable

variable "m" {
  default = {
    course = "Devops",
    trainer = "jhon"
  }
}

output "m" {
  value = var.m["course"]
}

variable "y" {}

output "y" {
  value = var.y
}

variable "url" {}

output "url" {
  value = var.url
}

variable "z" {}

output "z" {
  value = var.z
}