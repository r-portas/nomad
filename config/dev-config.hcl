plugin "docker" {
  config {
    volumes {
      # Enable Docker Volumes
      enabled = true
    }
  }
}

# Enable telemetry
telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
}