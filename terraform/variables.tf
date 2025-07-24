variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-021a584b49225376d"  # Ubuntu 22.04 LTS for Mumbai
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "sarika-dev-key"
  default     = "sarika-dev-key"
}

variable "private_key_path" {
  description = "Local path to your private .pem key"
  default     = "~/.ssh/sarika-dev-key.pem"
}
