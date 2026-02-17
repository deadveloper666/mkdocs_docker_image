#!/bin/bash

# Verificacion 
echo "WELCOME TO GENERATE IMAGE"
echo "Ensure building from last image build from this repo, to be incremental"

LAST_IMAGE_TAG_NAME=$(git describe --tags --abbrev=0)
echo "Last Build image tag is: $LAST_IMAGE_TAG_NAME"
echo "Ensure update Dockerfile to reference build from this version."
echo ""
echo "  FROM danipenaperez/mkdocs:$LAST_IMAGE_TAG_NAME"
echo ""

BRANCH_NAME=$(git symbolic-ref --short HEAD)
echo $BRANCH_NAME
if [ $BRANCH_NAME == "main" ]; then
    echo "ERROR: Generate images from main branch is not allowed"    
fi
exit


IMAGE_NAME=danipenaperez/mkdocs
echo "Building tag Image $BRANCH_NAME"
docker tag $IMAGE_NAME $IMAGE_NAME:$BRANCH_NAME
docker push $IMAGE_NAME:$BRANCH_NAME
echo "Succesfully published $IMAGE_NAME:$BRANCH_NAME on docker hub"

echo "Building tag Image as LATEST"
BRANCH_NAME=latest
echo "Building tag Image $BRANCH_NAME"
docker tag $IMAGE_NAME $IMAGE_NAME:$BRANCH_NAME
docker push $IMAGE_NAME:$BRANCH_NAME
echo "Succesfully published $IMAGE_NAME:$BRANCH_NAME on docker hub"

echo "Succesfully published $IMAGE_NAME $IMAGE_NAME:latest on docker hub"