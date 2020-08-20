provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"

}

module "robert_instance"{
    source = "./EC2"

}

