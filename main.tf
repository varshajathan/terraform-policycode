provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "test_bucket" {
  name     = "my-gcs-bucket-${random_id.bucket.hex}"
  location = var.region
  force_destroy = true
  uniform_bucket_level_access = true
  public_access_prevention = "inherited"
}
