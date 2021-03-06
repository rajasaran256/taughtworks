## Firewall-rules module

Creates and manages Network Firewall rules.

**Basic usage**

```hcl
module firewall-module {
  source = "./modules/firewall"
  name = "ssh-rule"
  network = "test-vpc"
  protocol = "tcp"
  ports = ["ssh"]
  source_ranges = ["0.0.0.0/0"]
  target_tags = [""]
}
```

## Variables
|Name|Description|Type|Default|Required|
|----|-----------|:----:|:-------:|:--------:|
|name|Name of the Firewall rule|String| - |Yes|
|network|The name or self_link of the network to attach this firewall to|String| - |Yes|
|source_ranges|A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS|List| - |Yes|
|target_tags|A list of target tags for this firewall (Automatically created based on vpc and rule name)|List| - |No|
|protocol|The name of the protocol to allow. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number, or all|String| - |Yes|
|ports|List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP|List| - |Yes|

## Outputs

|Name|Description|
|----|-----------|
|self_link|The URI of the created resource|
