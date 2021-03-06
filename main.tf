variable subnet_id {}
variable vpc_security_group_ids {
  type = list
}
variable identity {}
variable ami {}
variable region {}
variable server_os {
    type = string
    description = "Server Operating System"
    default = "ubuntu"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
#  ami                    = (var.server_os == "ubuntu") ? data.aws_ami.ubuntu.image_id : data.aws_ami.windows.image_id
  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids


  tags = {
    "Identity"    = var.identity
    "Name"        = "Student"
    "Environment" = "Training"
  }
}
