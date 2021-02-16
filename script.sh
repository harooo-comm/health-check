#! /bin/bash

STATUS_CODE=$(curl -k -s -o /dev/null -w "%{http_code}" "$1" -v)
VALID_STATUS_CODES=(200 301)

echo status code: $STATUS_CODE
if [[ ${VALID_STATUS_CODES[@]} =~ "${STATUS_CODE}" ]]; then
  exit 0
else
  exit -1
fi

