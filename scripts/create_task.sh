#!/bin/bash
# TEXT="eat" TOKEN="BAhJIiU2ZDBkNDViOGExM2VlZTRkMWE1NWU1NTk0ZDBmMDNiZAY6BkVG--f939c902311f69bfd97397cc049390ef53f0528d" sh create_task.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "task": {
      "name": "'"${TEXT}"'"
    }
  }'

echo
