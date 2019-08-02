provider "ddcloud" {
  # User name and password can also be specified via MCP_USER and MCP_PASSWORD environment variables.
  "username"           = "ddsg_mv"
  "password"           = "#vtgX2019" # Watch out for escaping if your password contains characters such as "$".
  "region"             = "AP" # The DD compute region code (e.g. "AU", "NA", "EU")
}

resource "ddcloud_server" "master" {
  count                = 1
  name                 = "${var.master}.${count.index+1}"
  description          = "This is my Terraform test server."
  admin_password       = "${var.admin_password}"
  power_state          = "start"
  memory_gb            = "${var.memory_gb}"
  cpu_count            = "${var.cpu_count}"
  cpu_speed            = "${var.cpu_speed}"
  networkdomain        = "${var.networkdomain}"
  dns_primary          = "${var.dns_primary}"
  dns_secondary        = "${var.dns_secondary}"
  image                = "${var.image}"
  primary_network_adapter = {
    vlan               = "${var.vlan}"
  }
  disk {
    scsi_unit_id       = 0
    size_gb            = "${var.size_gb}"
    speed              = "${var.cpu_speed}"
  }
}

output "Master_IPv4" {
  value = "${ddcloud_server.master.*.primary_adapter_ipv4}"
}

output "Master_IPv6" {
  value = "${ddcloud_server.master.*.primary_adapter_ipv6}"
}





# for more information https://github.com/DimensionDataResearch/dd-cloud-compute-terraform/blob/development/v1.0/docs/resource_types/server.md

