terraform {
  backend "s3" {
    bucket = "yaru-labs-terraform-state-bucket"
    key = "infrastructure/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "TerraformLocks"
    encrypt = true
  }
}

module "my_ecr" {
  source = "./modules/ecr"
}
