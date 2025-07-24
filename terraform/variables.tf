variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0da59f1af71ea4ad2"  # Ubuntu 22.04 LTS for Mumbai
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  default     = "sarika-dev-key"
}

variable "private_key_path" {
  description = "Local path to your private .pem key"
  default     = "~/.ssh/sarika-dev-key.pem"
}
