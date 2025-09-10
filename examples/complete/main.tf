provider "aws" {
    region = "us-east-1"
  
}

module "ec2" {
    source = "./modules/ec2"

    instance_config_map = {
        instance_size = "t2.micro"
        ami = "ami-00ca32bbc84273381"
        name = "module_ec2_instance" 
        vol_type = "gp2"
        vol_size = 8
      
    }
  
}