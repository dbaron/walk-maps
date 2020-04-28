#!/bin/bash

cd "$(dirname "$0")"

rsync -avz --copy-links --delete --delete-delay --delete-excluded --filter=". ./install-local-filter" ./ /var/www/html/walk-maps/
