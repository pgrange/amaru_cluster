This will spawn a cardano node and an amaru node and connect them together.

## How to run

Setup the NETWORK environment variable in `.env` file to chose on which network
to run. Currently supported values are `preprod` and `preview`.

```bash
#> echo NETWORK=preprod > .env
```

Then run the following command to bootstrap the amaru node. This will take a
while the first time as it will, before starting Amaru:

- sync the cardano node with the network
- and then bootstrap Amaru

```bash
#> docker compose up --build amaru
```

## Current limitations

It only supports preprod and previez networks and switching from one to another
is not convenient at this stage.
