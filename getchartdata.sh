#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Grab the JSON chart data object from the website."
    echo "Usage ./getchartdata.sh <url>"
    exit 1
fi
curl -s $1 | grep chart | grep -oP '(\{.*\})+' |  python -m json.tool

