job "nginx" {
  group "nginx" {
    network {
      port "nginx" {
        to = 80
      }
    }

    task "nginx" {
      driver = "docker"
      config {
        image = "nginx:mainline-alpine"
        ports = ["nginx"]

        # Use docker volumes to mount the file from the task's directory
        # to the location nginx expects it to be
        volumes = [
          "local/index.html:/usr/share/nginx/html/index.html"
        ]
      }

      # Read the file and mount it into the task
      template {
        data        = file("./index.html.tpl")
        destination = "local/index.html"
      }
    }
  }
}
