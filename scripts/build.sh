#!/bin/bash

IMAGE_NAME=getgort/test

docker build -t $IMAGE_NAME:latest $(pwd)/.