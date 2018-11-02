#!/bin/sh

USER=evolbank
HOST=evolbank.github.io
DIR=public_html/

Rscript -e 'source("build.R");build()' && hugo && rsync -avz --delete --exclude-from 'rsync-exclude.txt' docs/ ${USER}@${HOST}:~/${DIR}

exit 0
