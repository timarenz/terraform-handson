provider "digitalocean" {}

resource "digitalocean_droplet" "web" {
  count = 3
  image              = "ubuntu-16-04-x64"
  name               = "web${count.index + 1}"
  region             = "fra1"
  size               = "s-1vcpu-1gb"
}

resource "digitalocean_loadbalancer" "web" {
  name = "loadbalancer"
  region = "${digitalocean_droplet.web.0.region}"

  forwarding_rule {
    entry_port = 80
    entry_protocol = "http"

    target_port = 80
    target_protocol = "http"
  }

  droplet_ids = ["${digitalocean_droplet.web.*.id}"]
}

resource "digitalocean_record" "web" {
  domain = "do.arenz.io"
  type   = "A"
  name   = "web"
  value  = "${digitalocean_loadbalancer.web.ip}"
}