# Ingress

## Usage

1. Deploy Traefik

    ```bash
    nomad job run traefik.nomad.hcl
    ```

2. Deploy a basic whoami service

    ```bash
    nomad job run whoami.nomad.hcl
    ```

3. Visit `http://<docker-desktop-ip>/whoami`

## Job Specs

::: code-group
<<< ./traefik.nomad.hcl
<<< ./whoami.nomad.hcl
:::

## Resources

- [Traefik Proxy Now Fully Integrates with Hashicorp Nomad](https://traefik.io/blog/traefik-proxy-fully-integrates-with-hashicorp-nomad/)
