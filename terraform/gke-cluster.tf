resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-east1-b"
#   deletion_protection = false

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  initial_node_count = 2
}

