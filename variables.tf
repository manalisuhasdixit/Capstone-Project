# variables.tf
variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  default = "10.0.1.0/24"
}

variable "public_subnet_cidr_b" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr_a" {
  default = "10.0.3.0/24"
}

variable "private_subnet_cidr_b" {
  default = "10.0.4.0/24"
}

variable "db_username" {
  default = "foo"
}

variable "db_password" {
  default = "foobarbaz"
}