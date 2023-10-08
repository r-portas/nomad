job "redis" {
  group "redis" {
    network {
      port "redis" {
        static = 6379
        to     = 6379
      }
    }

    task "redis" {
      driver = "docker"
      config {
        image = "redis:alpine"
        ports = ["redis"]
      }
    }
  }
}
