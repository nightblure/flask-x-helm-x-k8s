# Flask in Kubernetes with Helm

---

## Deployment files:
* [Without Helm](https://github.com/nightblure/flask-x-helm-x-k8s/blob/main/k8s/deployment.yaml)
* [With Helm](https://github.com/nightblure/flask-x-helm-x-k8s/blob/main/k8s/helm/templates/deployment.yaml)

Deployment with **Helm** includes values from the [Chart](https://github.com/nightblure/flask-x-helm-x-k8s/blob/main/k8s/helm/Chart.yaml) and [Values](https://github.com/nightblure/flask-x-helm-x-k8s/blob/main/k8s/helm/values.yaml)

---

## Requirements:

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/)
* [Docker](https://www.docker.com/products/docker-desktop/)
* [Helm for Windows](https://helm.sh/ru/docs/intro/install/): ```choco install kubernetes-helm``` (**from cmd or PowerShell with admin privileges**)
* **If docker image wasn't in Docker Registry** run ```docker-push```

---

## How to run:
1. **Build** docker image: ```make up```
2. Deploy with **Helm chart** or **without**: ```make deploy-with-helm``` or ```make k8s-deploy```
3. [Try to send HTTP request to the Flask endpoint](http://localhost:5999)
4. The load balancer service will distribute requests across multiple pods. You can verify this by looking at the pod logs in Docker Desktop

---

## Errors and issues:
* Look ```kubectl describe pods```
* Look ```helm list```
* [Microservices in Python using Flask Framework | Dockerize and Deploy to Kubernetes with Helm](https://www.youtube.com/watch?v=SdTzwYmsgoU&ab_channel=DevOpsMadeEasy)
* [Kubernetes Lessons](https://www.youtube.com/playlist?list=PL3SzV1_k2H1VDePbSWUqERqlBXIk02wCQ)