#!/usr/bin/env bash 
read -r -p "What is the version of the tag? "  version
echo "pushing git tag"
git tag $version
git push origin  --tags  master:master  --force 
echo "pushing docker image"
docker tag safaci2000/tubby-ubuntu:latest safaci2000/tubby-ubuntu:$version
docker push  safaci2000/tubby-ubuntu:$version
