#!/bin/bash

echo "WELCOME TO GENERATE IMAGE"
echo "Ensure building from last image build from this repo, to be incremental"

LAST_IMAGE_TAG_NAME=$(git describe --tags --abbrev=0)
echo "Last Build image tag is: $LAST_IMAGE_TAG_NAME"
echo "Ensure update Dockerfile to reference build from this version."
echo ""
echo "  FROM danipenaperez/mkdocs:$LAST_IMAGE_TAG_NAME"
echo ""


IMAGE_NAME=danipenaperez/mkdocs:local
echo "building Locally Image"
docker build -t $IMAGE_NAME .
echo ""
echo "Succesfully create danipenaperez/mkdocs:local image"
echo "Now You can test it with: ./test/documentationServer.sh start "