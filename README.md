** Jupyter notebook with veracrypt

Notebook image that uses notebook-datascience as base image and adds to it new layer with veracrypt

*** Install to minikube with Helm

Build image with command
docker build -t notebook-veracrypt .

Load image to minikube
minikube image load notebook-veracrypt:latest

Install jupyterhub with custom config to minikube
helm upgrade jh jupyterhub/jupyterhub --create-namespace   --namespace jhub --values config.yaml --install 

Get hubs web-address
minikube service proxy-public --url -n jhub
