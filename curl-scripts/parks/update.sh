#!/bin/bash

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "parks": {
      "name": "'"${NAME}"'"
    }
  }'

echo
