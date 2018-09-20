//--------------------------------------------------------------------
// Variables
variable "ec2_instance_instance_name" {}
variable "ec2_instance_instance_type" {}
variable "ec2_instance_key_name" {}

//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/Darnold-TFE-Demos/ec2-instance/aws"
  version = "2.1.0"

  instance_name = "${var.ec2_instance_instance_name}"
  instance_type = "${var.ec2_instance_instance_type}"
  key_name = "${var.ec2_instance_key_name}"
}
