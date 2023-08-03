/* Sample terraform script to create an EC2 instance
 * Contact : www.arshadzackeriya.com, hello@arshadzackeriya.com
 * Written by Arshad Zackeriya, May 2018
 */



/*data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"]
  filter{

    name =   "architecture"
    values = ["x86_64"]
  }

}

resource "terraform_data" "replacement" {

  input = var.server_name

}
  
locals {

  azs = "us-east-1a"

}


module "Vpc" {
source = "./modules/Vpc"

vpc_name = "MyPublicVPC"
vpc_cidr = "10.10.0.0/16"
public_subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
az_s = ["us-east-1a", "us-east-1b" ,"us-east-1c"]

}





data "aws_vpc" "this_vpc" {

  id = module.Vpc.vpc_id


}

data "aws_subnet" "my_subnet"{
  
   

  vpc_id = data.aws_vpc.this_vpc.id

  availability_zone = "us-east-1a"

 }

 data "aws_security_group" "sg" {

  vpc_id = data.aws_vpc.this_vpc.id
 
  
}


  /*#most_recent = true
  
  filter{
    
  }
  #region = "${var.region}" 

  tags = {
    Name = "MyPublicVPC"
  }
}



resource "aws_instance" "testserver" {


  lifecycle {
    replace_triggered_by = [terraform_data.replacement]
  }

  #for_each = toset(var.server_name)
  # = toset(var.server_name)
  #ami = "${var.ami}"
  ami = "${var.ami}"
  #data.aws_ami.ami_id.id
  instance_type = "${var.instance_type}"
  availability_zone = local.azs
  security_groups = [data.aws_security_group.sg.id]
    
  subnet_id = data.aws_subnet.my_subnet.id
  #key_name = "${var.key_name}"
  disable_api_termination = "true"

  root_block_device {
        delete_on_termination = "true"
        volume_type = "gp2"
        volume_size = "${var.volume_size}"
    }

  

  # ...
  tags = {
    Name = "${var.server_name}"
  }

  provisioner "local-exec" {
    command = "echo first"
  }

  provisioner "local-exec" {
    command = "echo second"
  }
}
*/
import {
  to = aws_instance.server3
  id = "i-00aa786a1297c631b"
}



//module "key_pair" {
 // source = "terraform-aws-modules/key-pair/aws"

 // key_name           = "testing"
 // create_private_key = true
//} 
