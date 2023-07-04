

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
  default = "ami-05e411cf591b5c9f6"
}

variable "instance_type" {
  type = string
}

variable "availability_zone" {
  default = "us-east-1b"
}

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

variable "server_name" {
  default = "web-server"
}
