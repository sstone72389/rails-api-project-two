#!/bin/bash
# TEXT="eat" TOKEN="BAhJIiU2ZjMwMTVhN2MxZjk3MGE4OGU1MThlZGExOWM5YzdlOQY6BkVG--bd8156187c2f5317db8f2bded001abb6f43ddf26" sh create_task.sh

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
