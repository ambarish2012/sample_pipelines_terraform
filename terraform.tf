# ========================ECS Instances=======================

provider "aws" {}

# EC2 instances
resource "aws_instance" "sampleInstances" {
  count = 1

  # ami = "${var.ecsAmi}"
  ami = "ami-79d45d19" #This has to be an EBS backed AMI and not a S3 backed AMI
  availability_zone = "us-west-2b"   #REPLACE THIS WITH YOUR AVAILABILITY ZONE
  instance_type = "t2.micro"
  subnet_id = "subnet-f320be94"  #REPLACE THIS WITH YOUR SUBNET ID
  associate_public_ip_address = true
  source_dest_check = false

  tags = {
    Name = "sampleInstances-${count.index}"
  }
}
