#!/bin/bash
if [[ $(kubectl config current-context) -eq "kind-kind" ]]
then
    helm uninstall cert-manager -n cert-manager
else
    echo "Not in KIND context! Exiting"
fi