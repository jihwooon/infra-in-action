variable "prefixz" {
  default = "helloworld"
}

locals {
  my_info = {
    age    = 20
    region = "KR"
  }
  my_nums = [1, 2, 3, 4]
}

resource "local_file" "xyz" {
  content  = local.my_info.age
  filename = "{path.module}/ghi.txt"
}
