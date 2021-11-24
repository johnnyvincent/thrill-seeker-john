#!/bin/bash

# TOKEN="" PARKID="PARK_ID" sh curl-scripts/parks/create.sh

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
