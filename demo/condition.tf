variable "marks" {
  default = 80
}

output "result" {
  value = var.marks > 80 ? "pass" : "fail"
}
