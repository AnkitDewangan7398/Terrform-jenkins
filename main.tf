/* Sample terraform script to create an EC2 instance
 * Contact : www.arshadzackeriya.com, hello@arshadzackeriya.com
 * Written by Arshad Zackeriya, May 2018
 */

provider "aws" {
  
  region = "${var.region}"
  access_key = "AKIARZYHMUYGTT44THA5"
  secret_key = "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"
  #shared_credentials_file = "${var.shared_credentials_file}"
  #profile = "${var.profile}"
}



resource "aws_instance" "web-server" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.availability_zone}"
  vpc_security_group_ids = ["${var.vpc_rds_security_group_id}"]
    
  subnet_id = "${var.subnet_id}"
  #key_name = "${var.key_name}"
  disable_api_termination = "true"

  root_block_device {
        delete_on_termination = "true"
        volume_type = "gp2"
        volume_size = "${var.volume_size}"
    }

  tags = {
    Name = "${var.server_name}"
  }
}

//module "key_pair" {
 // source = "terraform-aws-modules/key-pair/aws"

 // key_name           = "testing"
 // create_private_key = true
//}