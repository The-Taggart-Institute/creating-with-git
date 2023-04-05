#!/bin/bash

# Remove existing docs folder 
if [ -d docs ]; then
    rm -rf docs
fi

# Rebuild the site
npx honkit build

# Copy the `_book` folder contents to `docs`
cp -Rf _book docs

# Readd CNAME file
echo cwg.taggartinstitute.org > docs/CNAME

# Create a new commit for the rebuild (every time), maybe with a date?
git add docs/
git commit -m "Rebuild: $(date)"

# Push the commit to GitHub.
git push
