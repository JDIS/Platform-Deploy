# Platform - Deploy

Deploy configurations for the JDIS training platform.
You must have a least 10G of free space for the various images.

## Requirements
- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

## Development
In development, you will need to launch the both the [frontend](https://github.com/JDIS/Platform-Frontend) and [backend](https://github.com/JDIS/Platform-Backend) services locally in `dev` mode and use the `docker-compose.dev.yml`.

You will then be able to interact with the platform using `localhost` on port `80` and the proxy will redirect your calls to the running services.

Note: You must use `localhost` and not `127.0.0.1` on local otherwise the CAS auth won't accept the connexion.