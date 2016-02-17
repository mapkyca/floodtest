#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Return the current height of the river, as got from the environment agency website."
    echo "Usage ./currentheight.sh <url>"
    exit 1
fi

curl -s $1 | grep -P '<strong[^>]+>([0-9]+.[0-9]+m)+</strong>' | grep -Po '[0-9]+\.[0-9]+m'
