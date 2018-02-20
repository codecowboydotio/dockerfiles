#!/bin/bash

NORM=$(tput rmso)
BOLD=$(tput smso)

usage()
{
  echo "Welcome to the docker build script."
  echo "Written by $BOLD svk $NORM"
  echo 
  echo "-d Directory for dockerfile"
  echo "-t Docker tag"
  echo "-h Help (this message)"
  echo
}


docker_build()
{

  docker build $1 --tag=$2
}


[[ $# < 1 ]] && usage


while getopts ":d:t:h" opt; do
 case $opt in
    h) 
       usage
       exit 1
       ;;
    d) 
       DOCKER_BUILD_DIR=$OPTARG
       ;;
    t) 
       DOCKER_TAG=$OPTARG
       ;;
    \?)
       echo "Invalid option: -$OPTARG" >&2
       exit 1
       ;;
 esac
done


[[ -z $DOCKER_TAG ]] && echo "-t option is required" && exit 1
[[ -z $DOCKER_BUILD_DIR ]] && echo "-d option is required" && exit 1

docker_build $DOCKER_BUILD_DIR $DOCKER_TAG
