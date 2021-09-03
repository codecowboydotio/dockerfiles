#!/bin/sh

podman rmi demos
podman rmi public.ecr.aws/y6q2t0j9/demos
aws ecr-public get-login-password --region us-east-1 | podman login --username AWS --password-stdin public.ecr.aws/y6q2t0j9
podman build -t demos .
podman tag demos:latest public.ecr.aws/y6q2t0j9/demos:swapi-loadgen
podman push public.ecr.aws/y6q2t0j9/demos:swapi-loadgen

