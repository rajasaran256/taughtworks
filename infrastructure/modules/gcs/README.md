# Terraform GKE Module

This module creates and GCS bucket. A random integer will be generated and added to the suffices for the supplied name to make the GCS bucket name globally unique.

## Usage

Basic usage of this module is as follows:

```hcl
module gcs {
  source        = "./modules/gcs"
  project       = "test-project"
  name          = "demo-bucket"
  storage_class = "STANDARD"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | The name of the GCS bucket to be created | string | n/a | yes |
| project | The ID of the project where GCS bucket will be created | string | n/a | yes |
| storage_class | The storage class of GCS bucket being created | string | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| gcs | Name of the GCS bucket |
