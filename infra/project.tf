resource "digitalocean_project" "playground" {
  name        = var.project_name
  description = var.project_description
  purpose     = var.project_purpouse
  environment = terraform.workspace
}

resource "digitalocean_project_resources" "playgrond" {
  project   = resource.digitalocean_project.playground.id
  resources = resource.digitalocean_droplet.k8s_node.*.urn
}
