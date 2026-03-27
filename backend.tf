terraform{
    backend "s3" {
        bucket = "deploylab-tfstate"
        key   = "stage-01/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "deploylab-tfstate-lock"
        encrypt = true
    }
}