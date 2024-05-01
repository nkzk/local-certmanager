kind:
	ctlptl apply -f local/kind-cluster.yaml
kind-destroy:
	ctlptl delete -f local/kind-cluster.yaml
certmanager:
	./local/install-certmanager.sh
certmanager-destroy:
	./local/uninstall-certmanager.sh
destroy: kind-destroy
providers: 
	kubectl apply -f ./provider.yaml