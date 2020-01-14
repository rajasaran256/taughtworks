# ------------------------------------------------------------------------------
# CREATING A KEY RING
# ------------------------------------------------------------------------------

resource "google_kms_key_ring" "my_key_ring" {
  project  = var.project
  name     = var.key_ring_name
  location = var.location
}

# ------------------------------------------------------------------------------
# CREATING A KEY
# ------------------------------------------------------------------------------

resource "google_kms_crypto_key" "my_crypto_key" {
  name     = var.key_name
  key_ring = google_kms_key_ring.my_key_ring.self_link
}
