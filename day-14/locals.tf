locals {
  nsg_rules={
    "allow_http"={
      priority=100,
      destination_port_range=80,
      description="Allow http(80) port"
    },
    "allow_https"={
      priority=200,
      destination_port_range=443,
      description="Allow https(443) port"
    },
    "allow_ssh"={
      priority=300,
      destination_port_range=22,
      description="Allow ssh(22) port"
    }
  }
}