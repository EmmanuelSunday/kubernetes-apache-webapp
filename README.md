# kubernetes-apache-webapp

STEP 1: \
Created a Dockerfile to build an apache image \
Containerized (Dockerized) the apache application \
Pushed the Docker image to DockerHub (personal account) using Jenkins Pipeline

STEP 2: \
Deployed EKS cluster called "playgroud-cluster" with 3 nodes in AWS 'us-west-2' region \
using the commands: \
    eksctl create cluster \
    --name plagroud-cluster \
    --region us-west-1 \
    --node-type t2micro \
    --nodes 3

STEP 3: \
Created the kubernetes Deployment manifest (deployment-manifest.yaml) file with 3 replica-set \
applied the deployment manifest using the code: \
    kubectle apply -f deployment-manifest.yaml 

Created a kubernetes Service manifest of kind Load Balancer (service-lb-manifest.yaml) file \
Applied the lb service manifest using the command; \
    kubectl apply-f service-lb-manifest.yaml 






