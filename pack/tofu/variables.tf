variable "blueprint_id" {
  type = string
}

variable "name" {
  type = string
  description = "Name: Please use only letters, numbers and _"
  validation {
    condition     = !can(regex("[^A-Za-z0-9_]", var.name))
    error_message = "The value must not contain any characters other than letters, numbers, and underscores (_)."
  }
  default = "DDOS"
}
