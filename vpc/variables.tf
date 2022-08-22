
variable "cidr_block" {
  type = string
  description                      = "IP range for the vpc"
  default                          = "10.0.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_hostnames             = true
}


