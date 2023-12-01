# Templating Config

> Application config can be loaded from a file and templated with variables from Nomad.

## Usage

1. Deploy the Nginx instance

    ```bash
    cd jobs/templating-config/
    nomad job run nginx.nomad.hcl
    ```

2. Visit `http://<docker-desktop-ip>:8000`

## Job Specs

::: code-group
<<< ./nginx.nomad.hcl
<<< ./index.html.tpl
:::
