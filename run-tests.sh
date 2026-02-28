#!/bin/bash

# Load .env file
set -a
source .env
set +a

# Run Newman
newman run collections/ReqRes\ Full\ Suite.postman_collection.json \
  --iteration-data data/users.csv \
  --env-var "baseUrl=$REQRES_BASE_URL" \
  --env-var "apiKey=$REQRES_API_KEY" \
  --env-var "token=" \
  --reporters cli,htmlextra \
  --reporter-htmlextra-export reports/report.html