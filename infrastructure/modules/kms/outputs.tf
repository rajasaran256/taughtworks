output "key_ring" {
  value       = google_kms_key_ring.my_key_ring.id
  description = "The ID key ring"
}

output "key" {
  value       = google_kms_crypto_key.my_crypto_key.id
  description = "The key name"
}
