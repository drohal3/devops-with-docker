#!/bin/bash

git_repo_url="https://github.com/$1.git"
docker_repo="$2:latest"

echo "GitHub Repository: $1"
echo "Docker Hub Repository: ${docker_repo}"

git clone $git_repo_url project

docker build . -t $docker_repo

docker image push $docker_repo


