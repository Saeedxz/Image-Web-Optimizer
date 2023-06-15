#!/bin/bash

docker build -t image_optimizer .

docker run -itdv "$(pwd)"/"$1":/app/in -v "$(pwd)"/"$2":/app/out image_optimizer 
