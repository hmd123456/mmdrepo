# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
provider "aws" {
  region = "eu-west-2"
  shared_credentials_files = ["C:/Users/mdeglurkar/AppData/Roaming/terraform.d/credentials.tfrc.json"]
}

