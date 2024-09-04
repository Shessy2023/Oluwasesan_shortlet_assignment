terraform {
  backend "gcs" {
    bucket  = "my-terraform-statee"
    prefix  = "terraform/state"
    project = "agile-athlete-425122-r0"
  }
}
