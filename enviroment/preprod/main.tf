module "resource_group" {
  source = "../../module/resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../module/subnet"
  sub        = var.sub
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../module/public_ip"
  pubs       = var.pubs
}

module "virtual_machine" {
  depends_on = [ module.virtual_network ]
  source     = "../../module/virtual_machine"
  mac1       = var.mac1
}