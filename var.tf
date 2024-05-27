variable "project" {
  default = "friendly-block-418720"
}
variable "region" {
  default = "us-central1"
}

variable "my-gke" {
  default = "k8s"
}
variable "app-name" {
  default = "hr"
}
variable "env" {
  default = "staging"
}
variable "machine_type" {
  default = "e2-micro"
}
variable "redis-name" {
  default = "my-redis"
}
variable "tier" {
  default = "BASIC"
}
variable "bucket-name" {
  default = "shadrakk-module-bucket"
}
variable "nodepool" {
  default = "gke-nodepool"
}
variable "vpc" {
  default = "default"
}
variable "subnet" {
  default = "default"
}