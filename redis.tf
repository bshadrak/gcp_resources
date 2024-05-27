resource "google_redis_instance" "redis" {
  name = var.redis-name
  memory_size_gb = 1
  authorized_network = var.vpc
  region = var.region
  project = var.project
  tier = var.tier
}