resource "google_compute_network" "vpc_network" {
  name = "my-vpc-network"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  network       = google_compute_network.vpc_network.name
  region        = "us-east1"
  ip_cidr_range = "10.0.0.0/16"
}


resource "google_compute_firewall" "default-allow-internal" {
  name    = "default-allow-internal"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = ["10.0.0.0/16"]
}
