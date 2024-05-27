resource "google_container_cluster" "gke" {
  name = var.my-gke
  location = var.region
  initial_node_count = 2
  remove_default_node_pool = true
  logging_service = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
  network = var.vpc
  subnetwork =var.subnet
#   addons_config {
#     horizontal_pod_autoscaling {
#       disabled = true
#     }
#     http_load_balancing{
#         disabled = true
#     }
#   }
#    private_cluster_config {
#     enable_private_endpoint = false
#     enable_private_nodes = true
#   }
#   ip_allocation_policy {
#     services_ipv4_cidr_block = ""
#     cluster_ipv4_cidr_block = ""
#   }
#   workload_identity_config {
#     workload_pool = ""
#   }
#   release_channel {
#     channel = REGULAR
#   }

}

resource "google_container_node_pool" "nodepool" {
  name = var.nodepool
  location = var.region
  cluster = google_container_cluster.gke.name
  node_count = 1
  node_config {
    machine_type = var.machine_type
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}