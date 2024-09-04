resource "google_compute_router" "nat-router" {
  name    = "nat-router"
  network = "default"
  region  = "us-east1"
}

resource "google_compute_router_nat" "nat-config" {
  name   = "nat-config"
  router = google_compute_router.nat-router.name

  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
