job "monitoring" {
  group "monitoring" {
    network {
      port "prometheus" {
        to = 9090
      }
    }

    task "prometheus" {
      driver = "docker"
      config {
        image = "prom/prometheus"
        ports = ["prometheus"]
      }
    }
  }
}
