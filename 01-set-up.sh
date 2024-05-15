# kubectl をインストール
brew install kubectl
kubectl version --client

# kind をインストール
brew install kind
kind version

# 動作確認
docker -v
kind create cluster --image=kindest/node:v1.29.0
kubectl cluster-info --context kind-kind
kind delete cluster

# 起動確認
kind create cluster --image=kindest/node:v1.29.0
kubectl get nodes
kind get clusters
kind delete cluster