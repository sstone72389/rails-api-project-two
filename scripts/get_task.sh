#!/bin/bash
# TOKEN="BAhJIiUxMjNlYjlhNjQ3YTI2MGI4NDc3Nzk2ZTIxMWJjMTM4OAY6BkVG--d65e3e4930182236047fc0582a901534d449183d" sh get_task.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
