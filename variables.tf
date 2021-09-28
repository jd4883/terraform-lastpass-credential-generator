variable "default_username" { type = string }
variable "name" { type = string }

variable "username" {
  default = ""
  type    = string
}

variable "url" {
  default = ""
  type    = string
}

variable "notes" {
  default = ""
  type    = string
}


variable "randomize_password" {
  default = true
  type    = bool
}

variable "default_password_length" {
  type    = number
  default = 100
}

variable "password_length" {
  type    = number
  default = 0
}

variable "password_use_special" {
  default = true
  type    = bool
}

variable "password_use_upper" {
  default = true
  type    = bool
}

variable "password_use_number" {
  default = true
  type    = bool
}

variable "password_use_lower" {
  default = true
  type    = bool
}

variable "override_special" {
  type    = string
  default = "!@#$%&*()-_=+[]{}<>:?"
}

variable "min_lower" {
  type    = number
  default = 1
}

variable "min_numeric" {
  type    = number
  default = 1
}

variable "min_special" {
  type    = number
  default = 1
}

variable "min_upper" {
  type    = number
  default = 1
}

variable "password" {
  type    = string
  default = "P@ssword123!"
}

variable "keepers" {
  type    = map(string)
  default = {}
}

variable "protocol" {
  type    = string
  default = "https"
}

variable "category" {
  default = null
  type    = string
}

variable "subcategories" {
  default = null
  type    = string
}