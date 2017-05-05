#!/bin/bash
# ID="2" TOKEN="BAhJIiVmZmI3NzY5NjYyMjQ4MGVjZGY4YWQyNzNmOTU1MWVlNAY6BkVG--4f1e33e0bd6ca73cc515763fa8e2b234035d0146" sh destroy_task.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
