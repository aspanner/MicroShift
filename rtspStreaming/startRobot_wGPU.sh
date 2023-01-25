#! /bin/bash


podman run --rm --name robot -p 30000:30000 --device /dev/dri quay.io/andyyuen/robot:latest

