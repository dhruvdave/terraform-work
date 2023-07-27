# variable.tf 

# No default value
variable "access_key" {
  type        = string
  description = "access key for AWS Account"
  default     = "AKIAUICWUDPZTVK2LC6W"
}

variable "secret_key" {
  type        = string
  description = "Secret key for AWS Account"
  default     = "OmV6sJD2my6RroPixh/BtjGFaHRqZ8jGJzgUfeTI"

}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
  

}
# No default value
variable "tag" {
  type        = string
  description = "The tag for the EC2 instance"
  
}

# default value for the variable location
variable "location" {
  type        = string
  description = "The project region"
  default     = "ap-south-1"
}

variable "instance_count" {
  type        = number
  description = "instance count"
  

}

variable "user_names" {

  description = "IAM Users"
  type = set(string)
  default = [ "Dhruv","Kruti","DD" ]
  
}
