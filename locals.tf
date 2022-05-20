locals {
  name    = var.name != null ? var.name : var.product
  comment = var.comment != null ? var.comment : "Custom cache policy for ${local.name}"
}
