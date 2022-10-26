variable "region_name" {  
  type = string
  default = "us-east-1"
  description = "region name"
}


variable "availability_zone_a" {
  type = string
  default = "us-east-1a"
}

variable "availability_zone_b" {
  type = string
  default = "us-east-1b"
}

variable "db_name" {
  type = string
}
variable "db_cluster_type" {
  type = string
}
variable "db_username" {

}
variable "db_password" {
  type = string
}

variable "elasticache_node_type" {
  type = string
}
variable "elasticache_engine" {
  type = string
}
variable "elasticache_node_no" {
  type = number
}
