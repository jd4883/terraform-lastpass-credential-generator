resource "lastpass_secret" "secret" {
  name     = local.secret_name
  username = local.username
  password = local.password
  url      = local.url
  note     = var.notes
  lifecycle {
    ignore_changes = [
      note,
      username,
    ]
  }
}

resource "random_password" "password" {
  count            = var.randomize_password ? 1 : 0
  length           = var.password_length == 0 ? var.default_password_length : var.password_length
  special          = var.password_use_special
  lower            = var.password_use_lower
  upper            = var.password_use_upper
  number           = var.password_use_number
  override_special = var.override_special
  min_lower        = var.min_lower
  min_numeric      = var.min_numeric
  min_special      = var.min_special
  min_upper        = var.min_upper
  keepers          = var.keepers
}