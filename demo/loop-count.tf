resource "null_resource" "test" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple", "banana"]
}


variable "vegs" {
  default = {
    "carrot" = {}
    "potato" = {}
    "onion" = {}
  }
}

resource "null_resource" "test1" {
  for_each = var.vegs
}
