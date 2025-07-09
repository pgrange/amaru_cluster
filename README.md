This will spawn a cardano node and an amaru node and connect them together.

## How to run

Setup the NETWORK environment variable in `.env` file to chose on which network
to run. Currently supported values are `preprod` and `preview`.

```bash
#> echo NETWORK=preprod > .env
```

Then run the following command to bootstrap the amaru node. This will take a
while the first time as it will sync the cardano node with the network before
starting Amaru:

```bash
#> docker compose up --build
```

## Current limitations

⚠ This will only bootstrap Amaru. It will not run the Amaru node as a
daemon.
