# Nomad Examples

> Examples for working with Hashicorp Nomad

## Docs

- [Commands](docs/commands.md)
- [CLI](docs/cli.md)
- [Resources](docs/resources.md)

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
