#!/bin/bash

# Script to zip the files and folders required for arXiv submission

OUTPUT="arxiv_submission.zip"
DIR="$(dirname "$0")"

cd "$DIR"

echo "Zipping files for arXiv..."

zip -r "$OUTPUT" sections figures main.tex refs.bib IEEEAerospaceCLS.cls

if [ $? -eq 0 ]; then
    echo "Successfully created $OUTPUT"
else
    echo "Error creating $OUTPUT"
fi
