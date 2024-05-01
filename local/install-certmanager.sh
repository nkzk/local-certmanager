

#!/bin/bash
if [[ $(kubectl config current-context) -eq "kind-kind" ]]
then
    helm repo add jetstack https://charts.jetstack.io --force-update
    helm repo update
    helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.14.5 --set installCRDs=true -f ./local/values.yaml
else
    echo "Not in KIND context! Exiting"
fi