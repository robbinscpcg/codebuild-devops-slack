#!/bin/bash

generate_post_data()
{
  cat <<EOF
{
   "text": "$SLACK_MESSAGE"
}
EOF
}

curl -X POST -H "Content-type: application/json" -d "$(generate_post_data)" $SLACK_URL