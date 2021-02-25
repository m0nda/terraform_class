resource "aws_instance" "web" {
  ami                    = (var.server_os == "ubuntu") ? data.aws_ami.ubuntu.image_id : data.aws_ami.windows.image_id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  region                 = "us-east-1"

  tags = {
#    "Identity"    = var.identity
    "Name"        = "Student"
    "Environment" = "Training"
  }
}
