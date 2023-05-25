data "aws_ami" "ami-test1" {
  most_recent = true
  owners = ["self"]
  filter {
    name   = "name"
    values = var.value
  }
}


resource "aws_instance" "data_block_test" {
  ami = data.aws_ami.ami-test1.id
  instance_type = var.machinetype
  key_name = "march2023-linux"

  tags = {
    Name = "Hello"
  }

}