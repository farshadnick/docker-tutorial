#!/bin/bash

# Define the URL to check
URL="http://localhost/"

# Make an HTTP GET request and store the response
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

# Check the HTTP response code
if [ "$RESPONSE" == "200" ]; then
    # Server is healthy
    exit 0
else
    # Server is unhealthy
    exit 1
fi
