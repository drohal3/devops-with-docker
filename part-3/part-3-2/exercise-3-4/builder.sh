#!/bin/bash

git_repo_url="https://github.com/$1.git"
docker_repo="$2:latest"

echo "Cloning from ${git_repo_url}"
git clone $git_repo_url project

docker build . -t $docker_repo

echo "Logging in to docker hub $DOCKER_USER : $DOCKER_PWD"
docker login --username $DOCKER_USER --password $DOCKER_PWD

echo "Pushing docker image in ${docker_repo} docker repository"
docker image push $docker_repo


