#!/bin/bash

docker build -f Dockerfile_builder -t clasp:latest .
nohup docker run --rm -v $(pwd):/root/clasp clasp:latest &>build-output &
tail -f build-output
