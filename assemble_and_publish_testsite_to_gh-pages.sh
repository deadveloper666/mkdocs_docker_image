#!/bin/bash
git checkout gh-pages
git merge main --no-ff
# Assemble dist
cd test
./documentationServer.sh assemble
cd ..
cp -a ./test/site/. .

# COMMIT AND PUSH 
git add -A
git commit -m "Pushed build source"
git push -u origin gh-pages

git checkout main

echo "Succesfully Assembled and published to gh-pages"