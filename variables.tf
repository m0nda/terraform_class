variable subnet_id {}
variable vpc_security_group_ids {
  type = list
}
# variable identity {}

variable server_os {
    type = string
    description = "Server Operating System"
    default = "ubuntu"
}
