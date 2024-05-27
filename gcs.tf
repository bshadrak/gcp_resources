resource "google_storage_bucket" "bucket1" {
  name = var.bucket-name
  location = var.region
  uniform_bucket_level_access = true
  force_destroy = true

lifecycle_rule {
  condition {
    age = 3
  }
  action {
    type = "SetStorageClass"
    storage_class = "REGIONAL"
  }
}
versioning {
  enabled = true
}
}