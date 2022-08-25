
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


variable "subnet_cidr_block_2" {
  type        = string
  description = "IP range for private subnet 1"
  default     = "10.0.32.0/24"
}

variable "subnet_cidr_block_3" {
  type        = string
  description = "IP range for public subnet 2"
  default     = "10.0.65.0/24"
}


variable "subnet_cidr_block_4" {
  type        = string
  description = "IP range for private subnet 2"
  default     = "10.0.98.0/24"
}
variable "availability_zone_1" {
  type        = string
  description = "Availability zone 1"
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  type        = string
  description = "Availability zone 2"
  default     = "us-east-1b"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "IP range for the vpc"
  default     = false
}

variable "public_destination_cidr_block" {
  type        = string
  description = "gateway Routing destination for instances in public subnets "
  default     = "0.0.0.0/0"
}

variable "desired_size" {
  type        = number
  default     = 1
}

variable "max_size" {
  type        = number
  default     = 2
}

variable "min_size" {
  type        = number
  default     = 1
}

variable "max_unavailable" {
  type        = number
  default     = 2
}

variable "endpoint_private_access" {
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  type        = bool
  default     = true
}

variable "ami_type" {
  type        = string
  default     = "AL2_x86_64"
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "force_update_version" {
  type        = bool
  default     = false
}
variable "capacity_type" {
  type        = string
  default     = "ON_DEMAND"
}
variable "instance_types" {
  type        = list
  default     = ["t3.medium"]
}
