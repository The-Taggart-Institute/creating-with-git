#!/bin/bash

# Make docs folder if it doesn't exist
if [ ! -d docs ]; then
    mkdir docs
fi

# Rebuild the site
npx honkit build

# Copy the `_book` folder contents to `docs`
cp -Rf _book/* docs/

# Create a new commit for the rebuild (every time), maybe with a date?
git add docs/
git commit -m "Rebuild: $(date)"

# Push the commit to GitHub.
git push
