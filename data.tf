data "external" "preview_secret" {
  program = ["${path.module}/preview_secret.sh", local.secret_name]
  depends_on = [
    lastpass_secret.secret,
    random_password.password,
  ]
}
