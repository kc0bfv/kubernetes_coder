#!/bin/sh
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install coder-db bitnami/postgresql \
    --namespace coder \
    --set auth.username=coder \
    --set auth.password=$DBPASSWD \
    --set auth.database=coder \
    --set persistence.size=10Gi
