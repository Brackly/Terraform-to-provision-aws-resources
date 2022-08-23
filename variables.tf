
variable "cidr_block" {
  type        = string
  description = "IP range for the vpc"
  default     = "10.0.0.0/16"
}


variable "instance_tenancy" {
  type        = string
  description = "IP range for the vpc"
  default     = "default"

}

variable "enable_dns_hostnames" {
  type        = bool
  description = "IP range for the vpc"
  default     = true

}


variable "subnet_cidr_block_1" {
  type        = string
  description = "IP range for public subnet 1"
  default     = "10.0.1.0/24"
}

variable "availability_zone_1" {
  type        = string
  description = "IP range for public subnet 1"
  default     = "us-east-1a "
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "IP range for the vpc"
  default     = true
}

variable "public_destination_cidr_block" {
  type        = string
  description = "gateway Routing destination for instances in public subnets "
  default     = "0.0.0.0/0" 
}