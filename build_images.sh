#!/usr/bin/env bash

dockerhub_user=welliton

for tool in */
do
  cd ${tool}
  for version in */
  do
    cd ${version}
    if [ ! -f Dockerfile ]
    then
      cd ..
      continue
    fi
    docker build --tag "${dockerhub_user}/${tool%/}:${version%/}" .
    if [ $? -ne 0 ]; then
        exit 1
    fi
    docker push "${dockerhub_user}/${tool%/}:${version%/}"
    if [ $? -ne 0 ]; then
        exit 1
    fi
    cd ..
  done
  cd ..
done
