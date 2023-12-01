job "debug" {
  group "debug" {
    task "debug" {
      driver = "docker"
      config {
        # Use busybox, as it has a handful of useful debugging tools
        image = "busybox"
        # Sleep forever, so we can exec into the container to run our commands
        entrypoint = ["/bin/sh", "-c", "while true; do sleep 500; done"]
      }
    }
  }
}
