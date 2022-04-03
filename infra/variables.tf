# general
variable "token" {
  type        = string
  description = "DigitalOcean API Token"
}

variable "ssh_key_name" {
  type        = string
  description = "DigitalOcean SSH Key name"
}

# project
variable "project_name" {
  type = string
}

variable "project_description" {
  type = string
}

variable "project_purpouse" {
  type = string
}

# droplets
variable "droplet_count" {
  type = number
}

variable "droplet_image" {
  type = string
}

variable "droplet_region" {
  type = string
}

variable "droplet_size" {
  type = string
}
