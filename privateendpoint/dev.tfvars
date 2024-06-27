resource_group_name = "dev-resources"
location            = "East US"

vnet_name           = "dev-network"
vnet_address_space  = ["10.1.0.0/16"]

service_subnet_name = "dev-service"
service_subnet_prefix = ["10.1.1.0/24"]

endpoint_subnet_name = "dev-endpoint"
endpoint_subnet_prefix = ["10.1.2.0/24"]

public_ip_name      = "dev-pip"
lb_name             = "dev-lb"

private_link_service_name = "dev-privatelink"
private_endpoint_name     = "dev-endpoint"