#!/bin/sh

URL=http://localhost/

RESPONSE=$(curl -s -o /dev/null -w '%{http_code}\n' "$URL")

[ "$RESPONSE" = "200" ] && exit 0 || exit 1