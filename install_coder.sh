#!/bin/sh
helm repo add coder-v2 https://helm.coder.com/v2
helm install coder ./helm_chart --namespace coder --values values.yaml
