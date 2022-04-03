resource "digitalocean_droplet" "k8s_node" {
  count  = var.droplet_count
  image  = var.droplet_image
  name   = "k8s-node-${count.index}"
  region = var.droplet_region
  size   = var.droplet_size

  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}

output "droplet_ip_addresses" {
  value = {
    for droplet in digitalocean_droplet.k8s_node :
    droplet.name => droplet.ipv4_address
  }
}
