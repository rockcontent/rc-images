#!/bin/bash
docker build . -t "rockcontent/clamav:$(cat VERSION)"
