Sets up coder to deploy workspaces in a separate namespace.

# Setup

export DBPASSWD=MakeSomethingNiceUpHere

sudo kubectl apply -f coder-namespace.yaml
sudo kubectl apply -f workspaces-namespace.yaml
sudo ./install_db.sh

sudo kubectl create secret generic coder-db-url -n coder --from-literal=url="postgres://coder:${DBPASSWD}@coder-db-postgresql.coder.svc.cluster.local:5432/coder?sslmode=disable"

sudo ./install_coder.sh
