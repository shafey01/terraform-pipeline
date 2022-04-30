module "Network" {
    source = "./Network_Module"
    
    region = var.region
    vpc_cidr = var.vpc_cidr
    public_1_cidr = var.public_1_cidr
    public_2_cidr  = var.public_2_cidr
    private_1_cidr = var.private_1_cidr
    private_2_cidr = var.private_2_cidr
    AZ_1 = var.AZ_1
    AZ_2 = var.AZ_2
}