#!/bin/sh

hash coffee 2>&- || { echo >&2 "error: Coffee is required but it's not installed (http://jashkenas.github.com/coffee-script/)."; exit 1; }

PATH="$PATH:/usr/local/bin/"
coffee -o "$BUILT_PRODUCTS_DIR/$CONTENTS_FOLDER_PATH/Resources/" HTML/*.coffee
