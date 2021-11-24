#!/bin/bash
# TOKEN="" NAME="" ADDRESS="" THEME="" sh curl-scripts/parks/create.sh

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "park": {
      "name": "'"${NAME}"'",
      "address": "'"${ADDRESS}"'",
      "theme": "'"${THEME}"'", 
      "owner": "'"${OWNER}"'"
    }
  }'

echo
