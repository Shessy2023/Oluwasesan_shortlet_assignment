resource "google_project_iam_member" "gke_service_account" {
  project = "agile-athlete-425122-r0"
  role    = "roles/container.admin"
  member  = "serviceAccount:my-tinyuka@agile-athlete-425122-r0.iam.gserviceaccount.com"
}
