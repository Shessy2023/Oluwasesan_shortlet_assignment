terraform {
  backend "gcs" {
    bucket  = "my-terraform-statee"
    prefix  = "terraform/state"
    # project = var.project_id
  }
}
