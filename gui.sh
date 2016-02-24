#!/bin/bash

# Make sure we're running in the project root dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Remove old NW.js archive
#rm -f app.nw

# Create new NW.js archive
zip -qr app.nw css fonts index.html js package.json partials

# Run NW.js
./nw app.nw 1>&2 2>/dev/null &
