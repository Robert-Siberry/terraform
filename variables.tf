variable "instance" {
  description = "This variable states the instance type for your EC2"
  default     = "t2.micro"
}

variable "region" {
  description = "This variable states the region for the EC2 instance"
  default     = "eu-west-1"
}

variable "ami" {
  description = "This variable states the ami ID for the EC2 instance"
  default     = "ami-07ee42ba0209b6d77"
}

variable "key" {
  description = "This variable states the key name for the EC2 instance"
  default     = "paullagah"
}

variable "shared_credentials" {
  description = "This variable states the shared credentials for the IAM User"
  default     = "~/.aws/credentials"
}

variable "cidr_block" {
  default     = "172.16.0.0/16"
}

variable "sn_cidr_block" {
  default     = "172.16.0.0/24"
}