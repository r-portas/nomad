job "whoami" {
  group "demo" {
    network {
      port "http" {
        to = 80
      }
    }

    service {
      name     = "whoami-demo"
      port     = "http"
      provider = "nomad"

      tags = [
        "traefik.enable=true",
        "traefik.http.routers.http.rule=Host(`whoami.nomad.localhost`)",
      ]
    }

    task "server" {
      driver = "docker"
      config {
        image = "traefik/whoami"
        ports = ["http"]
      }

      env {
        WHOAMI_PORT_NUMBER = "${NOMAD_PORT_http}"
      }
    }
  }
}
