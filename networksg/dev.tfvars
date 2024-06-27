resource_group_name           = "devresourcegroup"
location       = "East US"

security_group_name         = "example-security-group"
security_rule_name          = "example-security-rule"
security_rule_priority      = 100
security_rule_direction     = "Inbound"
security_rule_access        = "Allow"
security_rule_protocol      = "Tcp"
security_rule_source_port_range          = "*"
security_rule_destination_port_range     = "80"
security_rule_source_address_prefix      = "*"
security_rule_destination_address_prefix = "10.0.0.0/16"
