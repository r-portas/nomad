# Ingress

## Getting Started

1. Deploy Traefik

    ```bash
    nomad job run traefik.nomad.hcl
    ```

2. Deploy a basic whomai service

    ```bash
    nomad job run whoami.nomad.hcl
    ```

3. Visit `http://<docker-desktop-ip>/whoami`

## Resources

- [Traefik Proxy Now Fully Integrates with Hashicorp Nomad](https://traefik.io/blog/traefik-proxy-fully-integrates-with-hashicorp-nomad/)
