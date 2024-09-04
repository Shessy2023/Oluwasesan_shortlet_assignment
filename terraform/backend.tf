terraform {
  backend "gcs" {
    bucket  = "my-terraform-statee"
    prefix  = "terraform.tfstate"
    # project = "agile-athlete-425122-r0"
  }
}
