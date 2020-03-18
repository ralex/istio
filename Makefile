all: install
.PHONY: all setup cleanup

setup:
	ansible-playbook -D -i hosts site.yml
	kubectx minikube
	istioctl manifest apply --set profile=demo
	kubectl create namespace demo
	kubectl label namespace demo istio-injection=enabled --overwrite=true

install:
	kubens demo
	kubectl apply -f istio-1.5.0/samples/bookinfo/platform/kube/bookinfo.yaml
	echo $(kubectl get svc productpage -o jsonpath='http://{.spec.clusterIP}:{.spec.ports[0].port}/productpage')

cleanup:
	kubens demo
	kubectl delete -f istio-1.5.0/samples/bookinfo/platform/kube/bookinfo.yaml
	kubectl delete namespace demo
