module "dev-app" {
  source = "./Terra-Infra"
  
  my-env = "dev"
  my-ami = "ami-06a974f9b8a97ecf2"
  my-instance-type = "t2.micro"
  instance_count = 1
}

module "prod-app" {
  source = "./Terra-Infra"
  
  my-env = "prod"
  my-ami = "ami-06a974f9b8a97ecf2"
  my-instance-type = "t2.medium"
  instance_count = 2
}

module "staging-app" {
  source = "./Terra-Infra"
  
  my-env = "staging"
  my-ami = "ami-06a974f9b8a97ecf2"
  my-instance-type = "t2.large"
  instance_count = 3
}