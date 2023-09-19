# Configure the HuaweiCloud Provider

# Configs that came from root variables.tf (tf.vars)

provider "huaweicloud" {
  region     = var.region[0]
  access_key = var.access_key
  secret_key = var.secret_key
  project_id = var.project_id
  insecure   = true
  
}

# Creating Modules based on ./vpc files (main.tf, variables.tf)

# Modules 

module "neogrid-test" {
	source = "./vpc"
	region = var.region[0]

	vpc = [
	{
		vpc_name = "my-vpc"
		vpc_cidr = "10.144.0.0/21"
		 vpc_subnet = [
		 	{
		 		sub_name = "snet-pre-hub-private-saperu1-01"
		 		sub_cidr = "10.144.0.0/24"
		 		sub_gateway = "10.144.0.1"
		 	}

		]
	}
	]
}