variable "project" {
  description = "ID of the project where KMS key ring will be created"
}

variable "location" {
  description = "The region of the KMS resources will be created "
}

variable "key_ring_name" {
  description = "Name of the key ring"
}

variable "key_name" {
  description = "The name the KMS key"
}
