#!/bin/bash
# TEXT="take out trash" TOKEN="BAhJIiU1M2I4ZDc3OWJhNDY2YzJiOGZlM2NkNDExYjlhODEyYgY6BkVG--380d545ed11d1dfdd4819da2662137691c299669" sh create_task.sh

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
