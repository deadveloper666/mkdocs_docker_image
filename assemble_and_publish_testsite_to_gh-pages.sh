#!/bin/bash
# Ensure get the last published image
docker pull danipenaperez/mkdocs
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

echo "Succesfully Assembled and published to gh-pages. Redirecting to public site..."
sleep 5s
sensible-browser "https://deadveloper666.github.io/mkdocs_docker_image/"