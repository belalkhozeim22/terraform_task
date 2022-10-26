terraform {
  backend "s3" {
    bucket = "state-bucket-terraform-562"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table  = "state" 
  }
  
}
