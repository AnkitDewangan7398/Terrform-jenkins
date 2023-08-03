

########################
## Variables
########################



variable "region" {
  default = "us-east-1"

}

/*variable "shared_credentials_file" {
  default = "/home/<username>/.aws/credential"
}

#variable "profile" {
  default = "credential profile name"
}
*/
variable "ami" {
  type = string
  default = "ami-05e411cf591b5c9f6"

}


  /*validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "The ami value must be a valid AMI id, starting with \"ami-\"."
  }
}*/



variable "instance_type" {
  type = string
}

/*variable "availability_zone" {
  default = "us-east-1a"
}*/

variable "vpc_rds_security_group_id" {

  type = string

  default = "sg-03074e862e935cfa2"

}

variable "subnet_id" {

  default = "subnet-02396de8df752a0c2"
}

#variable "key_name" {
#  default = "ansible.ppk"
#}

variable "volume_size" {
  default = "8"
}

/*variable "server_name" {
  type = list(string)
  default = ["new-server1", "new-server2" ,"new-server3"]
}*/
variable "server_name" {

  default = "testserver"
}
