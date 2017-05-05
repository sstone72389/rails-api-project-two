#!/bin/bash
# TOKEN="BAhJIiVmZmI3NzY5NjYyMjQ4MGVjZGY4YWQyNzNmOTU1MWVlNAY6BkVG--4f1e33e0bd6ca73cc515763fa8e2b234035d0146" sh get_task.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
