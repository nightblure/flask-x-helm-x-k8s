runserver:
	flask --app main run --host=0.0.0.0 --port=5000

up:
	docker-compose up -d --build

docker-push:
	docker build -f Dockerfile . -t nightblure/flask-k8s:latest
	docker login -u nightblure
	docker push nightblure/flask-k8s:latest

k8s-deploy:
	kubectl apply -f k8s/deployment.yaml

deployments:
	kubectl get deployments

services:
	kubectl get services

k8s-clean:
	kubectl delete -f k8s