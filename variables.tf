variable "name" {
  type = "string"
  default = "server_tf"
}

variable "admin_password" {
  type    = "string"
  default = "Wsoaplj17$"
}

variable "memory_gb" {
  type    = "string"
  default = "8"
}

variable "cpu_count" {
  type    = "string"
  default = "2"
}

variable "cpu_speed" {
  type    = "string"
  default = "HIGHPERFORMANCE"
}

variable "networkdomain" {
  type    = "string"
  default = "8d742d1e-4a56-4986-8ecc-7d04a451f275"
}

variable "vlan" {
  type    = "string"
  default = "63d86750-0f83-4570-b433-2af600c2bd06"
}

variable "dns_primary" {
  type    = "string"
  default = "8.8.8.8"
}

variable "dns_secondary" {
  type    = "string"
  default = "8.8.4.4"
}

variable "image" {
  type    = "string"
  default = "CentOS 7 64-bit 2 CPU"
}

variable "size_gb" {
  type    = "string"
  default = "50"
}
