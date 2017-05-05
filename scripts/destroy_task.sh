#!/bin/bash
# ID="4" TOKEN="BAhJIiU2ZjMwMTVhN2MxZjk3MGE4OGU1MThlZGExOWM5YzdlOQY6BkVG--bd8156187c2f5317db8f2bded001abb6f43ddf26" sh destroy_task.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
