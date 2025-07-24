provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "cloud-native-web"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install nginx -y"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = var.private_key
      host        = self.public_ip
    }
  }
}
