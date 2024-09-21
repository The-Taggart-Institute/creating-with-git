#!/bin/bash


if [ -d docs ]; then
   mkdir docs
fi

npx honkit build

cp -Rf _book docs

git add docs/
git commit -m "Rebuild: $(date)"

git push
