#! /bin/bash

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$1" -v)
if [[ $STATUS_CODE -ne 200 ]]; then
  echo status code: $STATUS_CODE
  exit -1
fi
