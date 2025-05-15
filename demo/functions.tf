variable "fruits" {}

output "apple" {
  value = "Apple price is ${var.fruits["apple"]["price"]}, quantity - ${var.fruits["apple"]["quantity"]}"
}

output "banana" {
  value = "Banana price is ${lookup(var.fruits["banana"], "price", 0.5)}, quantity - ${lookup(var.fruits["banana"], "quantity", 2)}"
}