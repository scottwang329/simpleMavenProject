#!/bin/bash

# Copy the new jar to the build location
cp -f target/*.jar jenkins/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/build && docker build -f Dockerfile-Java -t maven-project:latest --no-cache .
