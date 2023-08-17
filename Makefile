runserver:
	flask --app main run --host=0.0.0.0 --port=5000

up:
	docker-compose up -d --build

docker-push:
	docker build -f Dockerfile . -t nightblure/flask-k8s:latest
	docker login -u nightblure
	docker push nightblure/flask-k8s:latest

# without Helm, hardcoded values
k8s-deploy:
	kubectl apply -f k8s/deployment.yaml

deploy-with-helm:
	helm delete flask-k8s-helm-deployment
	helm install flask-k8s-helm-deployment k8s/helm

deployments:
	kubectl get deployments

services:
	kubectl get services

k8s-clean:
	kubectl delete -f k8s

helm-list:
	helm list