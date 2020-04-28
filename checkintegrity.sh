#!/bin/bash

URL="$1"

# based on https://unix.stackexchange.com/questions/3675/how-can-i-get-a-base64-encoded-shax-on-the-cli
echo "sha512-$(curl --silent "$URL" | openssl dgst -binary -sha512 | openssl base64)"


