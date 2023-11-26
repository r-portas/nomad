# Nomad

> Examples, documentation and tools for working with Hashicorp Nomad

## Docs

- [Commands](docs/commands.md)
- [CLI](docs/cli.md)
- [Resources](docs/resources.md)

## Jobs

| Job | Description |
| --- | ----------- |
| [basic-job](jobs/basic-job/) | A simple job that deploys a Redis instance |
| [ingres](jobs/ingress/) | A job that deploys Traefik as ingress to a cluster |
| [monitoring](jobs/monitoring/) | A basic monitoring setup with Prometheus and Grafana |

## Getting Started

1. Start Docker Desktop
2. Start Nomad dev server

   ```bash
   make start
   ```

3. Check Nomad is running by visiting [http://localhost:4646](http://localhost:4646)
4. Run an example job

   ```bash
   cd jobs/redis
   nomad job run redis.nomad.hcl
   ```
