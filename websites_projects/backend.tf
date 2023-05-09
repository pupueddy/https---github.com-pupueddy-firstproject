# store the terraform state file in s3
/*terraform {
  backend "s3" {
    bucket    = "aizengbe"
    key       = "websites_projects.tfstate"
    region    = "us-east-1"
  }
}
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  
  backend "s3" {
    bucket         = "aizengbe"
    #encrypt        = true
    key            = "websites_projects.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-lock"
  }
}


