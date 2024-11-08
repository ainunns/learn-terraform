variable "password" {
  type = string
  sensitive = true
}

variable "token" {}

variable "instance_count" {
  type = number
  validation {
    condition       = var.instance.count > 0
    error_message   = "Instance count must be greater than zero."
  }
}

output "password_output" {
  value = var.password
  sensitive = true
}

output "password_token" {
  value = var.token
}

output "instance_count" {
  value = var.instance_count
}
