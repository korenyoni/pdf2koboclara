#/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: process.sh [pdf] [Title] [Author] [outfile]"
    exit 1
fi

if ! which k2pdfopt > /dev/null; then
    echo "Error: k2pdfopt not found in PATH"
    exit 1
fi

exit 0
