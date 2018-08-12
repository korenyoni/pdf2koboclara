#/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: process.sh [pdf] [Title] [Author] [outfile]"
    exit 1
fi

PDF=$1
TITLE=$2
AUTHOR=$3
OUTFILE=$4

if ! which k2pdfopt > /dev/null; then
    echo "Error: k2pdfopt not found in PATH"
    exit 1
fi

k2pdfopt -col 1 -fc- -w 1072 -h 1448 -dpi 300 -idpi -2 -ui- -title $2 -author $3 -o $2 $1

exit 0
