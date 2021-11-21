#!/bin/bash

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "parks": {
      "name": "'"${NAME}"'",
      "address": "'"${ADDRESS}"'",
      "theme": "'"${THEME}"'"
    }
  }'

echo
