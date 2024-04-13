variable "prefix" {
  default = "hello"
}

locals {
  name = "terraform"
}

resource "local_file" "abc" {
  content  = local.content
  filename = "{path.module}/abc.txt"
}

resource "local_file" "def" {
  content  = var.my_var
  filename = "{path.module}/def.txt"
}

resource "local_file" "ghi" {
  content  = var.my_key
  filename = "{path.module}/ghi.txt"
}


