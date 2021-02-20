#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u durgeshnayak -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG durgeshnayak/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push durgeshnayak/$IMAGE:$BUILD_TAG
