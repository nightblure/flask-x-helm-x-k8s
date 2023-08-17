# Flask in Kubernetes with Helm

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

---

## Errors and issues:
* Look ```kubectl describe pods```
* Look ```helm list```
* [Microservices in Python using Flask Framework | Dockerize and Deploy to Kubernetes with Helm](https://www.youtube.com/watch?v=SdTzwYmsgoU&ab_channel=DevOpsMadeEasy)