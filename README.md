# Netflix Clone App with React.js - Docker & Kubernetes Deployment

## Overview

This project showcases the development of a Netflix clone app using React.js. The application is containerized using Docker, and the Docker image is built, run, and pushed to Docker Hub. Additionally, there are Kubernetes deployment and service configurations using Minikube and `kubectl` for deploying the application to a Kubernetes cluster.

## Features

- Netflix clone app built with React.js.
- Docker containerization for the application.
- Building, running, and pushing Docker images to Docker Hub.
- Kubernetes deployment and service configurations using Minikube and `kubectl`.

## Prerequisites

Make sure you have the following tools installed:

- Node.js and npm
- Docker
- Minikube
- kubectl
- Docker Hub account

## Netflix Clone App

Clone the Netflix clone app repository and navigate to the project directory:

```bash
git clone https://github.com/Murshidtp/Kubernetes-Deployment.git
cd Kubernetes-Deployment
```
### Build Docker Image

Build the Docker image for the Netflix clone app.

```bash
docker build -t netflix-clone:latest .
```
### Run Docker Container

```bash
docker run -p 3000:3000 -d netflix-clone:latest
```
### Tag Docker Image

```bash
docker tag netflix-clone:latest your_dockerhub_username/your_repository_name:tag
```
### Push the Image to Docker Hub

```bash
docker push your_dockerhub_username/your_repository_name:tag
```
## Kubernetes (Minikube)
### Deploy to Kubernetes

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
### Access the App in Minikube

```bash
minikube service react-app-service --url
```
Access the app at http://<Minikube_IP>:<NodePort> in your web browser.
