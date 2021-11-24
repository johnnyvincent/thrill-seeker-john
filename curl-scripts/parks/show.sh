#!/bin/sh

# TOKEN="" PARKID_ID="PARKID" sh curl-scripts/parks/create.sh

API="http://localhost:4741"
URL_PATH="/parks"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
