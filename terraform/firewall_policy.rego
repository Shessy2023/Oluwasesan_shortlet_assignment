package terraform

deny[reason] {
  input.resource_changes[_].type == "google_compute_firewall"
  input.resource_changes[_].change.after.allow[_].ports[_] != 80
  input.resource_changes[_].change.after.allow[_].ports[_] != 443
  reason := "Only ports 80 and 443 should be allowed"
}
