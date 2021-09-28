locals {
  secret_name = join("/", compact([var.category, var.subcategories, var.name]))
  username    = var.username == "" ? var.default_username : var.username
  password    = var.randomize_password ? random_password.password.0.result : var.password
  url         = "${var.protocol}://${var.url}"
}