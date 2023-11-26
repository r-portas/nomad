job "monitoring" {
  group "monitoring" {
    network {
      port "prometheus" {
        to = 9090
        static = 9090
      }
      port "grafana" {
        to = 3000
        static = 3000
      }
    }

    task "prometheus" {
      driver = "docker"
      config {
        image = "prom/prometheus"
        ports = ["prometheus"]
        volumes = [
          "local/prometheus.yml:/etc/prometheus/prometheus.yml"
        ]
        mount {
          type   = "volume"
          target = "/prometheus"
          source = "prometheus-data"
        }
      }
      
      template {
        data = file("./config/prometheus.yaml")
        destination = "local/prometheus.yml"
      }
    }

    task "grafana" {
      driver = "docker"
      config {
        image = "grafana/grafana-oss:latest"
        ports = ["grafana"]
        volumes = [
          "local/datasources.yaml:/etc/grafana/provisioning/datasources/datasources.yaml",
          // "local/dashboards.yaml:/etc/grafana/provisioning/dashboards/dashboards.yaml",
          // "local/dashboards:/etc/dashboards",
        ]
      }
      
      env {
        GF_SECURITY_ADMIN_USER = "admin"
        GF_SECURITY_ADMIN_PASSWORD = "password"
        GF_AUTH_ANONYMOUS_ENABLED = "true"
        GF_AUTH_ANONYMOUS_ORG_ROLE = "Viewer"
      }
      
      template {
        data = file("./config/grafana/datasources.yaml")
        destination = "local/datasources.yaml"
      }
    }
  }
}
