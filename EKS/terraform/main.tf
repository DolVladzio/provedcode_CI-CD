#########################################################################
# Modules 
#########################################################################
module "vpc" {
	source = "./modules/vpc"
}
#----------------------------
module "subnet" {
	source = "./modules/subnet"
	vpc_id = module.vpc.vpc_id
	cluster_name = path.module
}
