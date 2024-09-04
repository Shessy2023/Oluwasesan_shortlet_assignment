provider "google" {
  credentials = file("/Users/shessy/Desktop/keys/agile-athlete-425122-r0-a58006c0e8d6.json")
  project     = "agile-athlete-425122-r0"
  region      = "us-east1"
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${google_container_cluster.primary.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
}



# resource "kubernetes_namespace" "example" {
#   metadata {
#     name = "example-namespace"
#   }
# }