#!/bin/sh

TOKEN="" sh curl-scripts/parks/index.sh

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
