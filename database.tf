resource "aws_db_instance" "default" {
  allocated_storage    = 8
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.db_cluster_type
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

resource "aws_elasticache_cluster" "redis_cache" {
  cluster_id           = "cluster-example"
  engine               = var.elasticache_engine
  node_type            = var.elasticache_node_type
  num_cache_nodes      = var.elasticache_node_no
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
} 