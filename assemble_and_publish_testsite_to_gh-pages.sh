#!/bin/bash
cd test
./documentationServer.sh assemble
cd ..
git checkout gh-pages
git merge main --no-ff
cp -a ./test/site/. .