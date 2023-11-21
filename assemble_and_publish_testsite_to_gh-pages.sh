#!/bin/bash
cd test
./documentationServer.sh assemble
git checkout gh-pages
git merge main --no-ff
cp -a ./site/. .