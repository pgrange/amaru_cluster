#!/usr/bin/env bash

usage() {
    echo "Usage: $0" >&2
    echo "$*" >&2
    exit 1
}

LEDGER_DIR="${LEDGER_DIR:-ledger.db}"
CONFIG_FOLDER="${CONFIG_FOLDER:-/opt/amaru/config}"
CHAIN_DIR="${CHAIN_DIR:-chain.db}"

[[ -z "$NETWORK" ]] && usage "Define NETWORK in .env with a value supported by Amaru"

if ! [ -d $LEDGER_DIR ]
then
    amaru bootstrap \
      --peer-address cardano:3001 \
      --config-dir "${CONFIG_FOLDER}" \
      --ledger-dir "${LEDGER_DIR}" \
      --chain-dir "${CHAIN_DIR}" \
      --network "${NETWORK}"
fi

amaru daemon \
      --peer-address cardano:3001 \
      --ledger-dir "${LEDGER_DIR}" \
      --chain-dir "${CHAIN_DIR}" \
      --network "${NETWORK}"
