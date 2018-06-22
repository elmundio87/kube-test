#!/bin/bash

eval $(minikube docker-env)

docker build . -t $(basename $PWD)

kubectl apply -f deployment.yml
kubectl describe pods