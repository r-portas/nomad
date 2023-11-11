# Monitoring

> A basic monitoring stack

## Requirements

- [Telemetry](https://developer.hashicorp.com/nomad/docs/configuration/telemetry) must be enabled in the Client configuration, the dev server already configures this.

## Resources

- [Monitoring Nomad](https://developer.hashicorp.com/nomad/docs/operations/monitoring-nomad)

## Useful Metrics

Below is a handful of useful metrics, most of the descriptions come from the [Metrics Reference](https://developer.hashicorp.com/nomad/docs/operations/metrics-reference) page in the Nomad docs.

### Host Metrics

All host metrics are namespaced under `nomad_client_host`

#### Memory

| Metric | Unit | Description |
| --- | --- | --- |
| `nomad_client_host_memory_available` | Bytes | Total amount of memory available to processes which includes free and cached memory |
| `nomad_client_host_memory_free` | Bytes | Amount of memory which is free |
| `nomad_client_host_memory_used` | Bytes | Amount of memory used by processes |
| `nomad_client_host_memory_total` | Bytes | Total amount of physical memory on the node |

#### CPU

| Metric | Unit | Description |
| --- | --- | --- |
| `nomad_client_host_cpu_total_percent` | Percentage | Total CPU utilization in percentage, per core |
| `nomad_client_host_cpu_system` | Percentage | Total CPU utilization system space, per core |
| `nomad_client_host_cpu_user` | Percentage | Total CPU utilization user space, per core |
| `nomad_client_host_cpu_idle` | Percentage | Total CPU utilization in idle state, per core |

#### Disk

| Metric | Unit | Description |
| --- | --- | --- |
| `nomad_client_host_disk_used_percent` | Percentage | Percentage of disk space used |
| `nomad_client_host_disk_available` | Bytes | Total amount of disk space available |
| `nomad_client_host_disk_used` | Bytes | Total amount of disk space used |
| `nomad_client_host_disk_size` | Bytes | Total size of the disk |

#### Other

| Metric | Unit | Description |
| --- | --- | --- |
| `nomad_client_uptime` | Seconds | Uptime of the host running the Nomad client |

### Allocations

#### Resource Consumption

| Metric | Unit | Description |
| --- | --- | --- |
| `nomad_client_allocs_memory_usage` | Bytes | Memory usage of the allocation |
| `nomad_client_allocs_total_percent` | Percentage | Total CPU resources consumed by the task across all cores |

TODO:

- (Job / Allocation) status metrics
- Server metrics
- Nomad process metrics
