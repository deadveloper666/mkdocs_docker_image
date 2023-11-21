#!/bin/bash
git checkout gh-pages
git merge main --no-ff
# Assemble dist
cd test
./documentationServer.sh assemble
cd ..
cp -a ./test/site/. .

