#!/usr/bin/env bash
docker run --runtime=nvidia -p 8888:8888 -v $PWD:/notebooks -d ankitkariryaa/keras-rasterio:latest-gpu-py3
docker logs container-name-here
