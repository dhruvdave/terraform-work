provider "aws" {

    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
  
}


resource "aws_iam_user" "my-users" {

   
  
    name      = "test-user"
    
    
   

}
