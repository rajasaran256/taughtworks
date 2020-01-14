## KMS module

Creates KMS key ring and KMS key creation.

**Basic usage**

```hcl
module kms {
  source   = "./modules/kms"
  project  = "test-project"
  location = "europe-west2"
  key_name = "my-key"
  key_ring_name = "my-key-ring"
}
```

## Variables
|Name|Description|Type|Default|Required|
|----|-----------|:----:|:-------:|:--------:|
| project | The ID of the project where KMS  will be created | string | n/a | yes |
| location | The location (region or zone) in which the cluster master will be created | string | n/a | yes |
| key_name | The name of the GKE cluster will be created | string | n/a | yes |
| key_ring_name | The name of the GKE cluster will be created | string | n/a | yes |

## Outputs

|Name|Description|
|----|-----------|
|self_link|The URI of the created resource|
