module "iti_network" {
  source = "./network"
  region_name = var.region_name
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
}

