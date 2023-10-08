job "traefik" {
  group "traefik" {
    network {
      port "http" {
        static = 80
      }
      port "admin" {
        static = 8080
      }
    }

    service {
      name     = "traefik-http"
      provider = "nomad"
      port     = "http"
    }

    task "server" {
      driver = "docker"
      config {
        image = "traefik:latest"
        ports = ["admin", "http"]
        args = [
          "--api.dashboard=true",
          "--api.insecure=true", # For Test only, please do not use that in production
          "--entrypoints.web.address=:${NOMAD_PORT_http}",
          "--entrypoints.traefik.address=:${NOMAD_PORT_admin}",
          "--providers.nomad=true",
          "--providers.nomad.endpoint.address=http://${NOMAD_IP_http}:4646" # IP to your nomad server 
        ]
      }
    }
  }
}
