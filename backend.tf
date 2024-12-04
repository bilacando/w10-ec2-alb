terraform {
  backend "s3" {
    bucket = "kjhkjh"   #replace with your bucket
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "mnbmn" #replace with your table
  }
}