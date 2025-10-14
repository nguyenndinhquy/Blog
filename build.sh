#!/bin/bash
set -e

# The baseURL is passed as the first argument to this script.
BASE_URL=${1}

echo "Building site with baseURL: $BASE_URL"

# Run hugo, passing the baseURL.
hugo --minify --baseURL "$BASE_URL"
