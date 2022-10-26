provider "aws" {
  region  = "us-east-1"  
  shared_config_files = ["/home/belal/.aws/config"]
  shared_credentials_files = ["/home/belal/.aws/credentials"]
  profile = "test"
}

