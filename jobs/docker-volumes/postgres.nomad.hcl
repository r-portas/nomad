job "postgres" {
  group "postgres" {
    network {
      port "postgres" {
        to = "5432"
      }
    }

    task "postgres" {
      driver = "docker"
      config {
        image = "postgres:alpine"
        ports = ["postgres"]

        mount {
          type   = "volume"
          target = "/var/lib/postgresql/data"
          source = "postgres-data"
        }
      }

      env {
        POSTGRES_USER     = "admin"
        POSTGRES_PASSWORD = "password"
        POSTGRES_DB       = "db"
      }

    }
  }
}
