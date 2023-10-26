variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "aws_instance-app_server-ami" {
  description = "Value of the AMI for EC2"
  type        = string
  default     = ""
}
