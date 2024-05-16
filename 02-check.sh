# 動作確認
kubectl get pod --namespace default
kubectl get pod -n default

kubectl get pod myapp -n default
kubectl get pod myapp -n default --output wide
kubectl get pod myapp -n default -o wide

kubectl get pod myqpp -o yaml -n default > pod.yaml
diff pod.yaml myapp.yaml

# get より詳しく
kubectl describe pod myapp -n default

# ログ確認
kubectl logs myapp
kubectl logs myapp --container hello-server

# ラベルで絞り込み
kubectl apply --filename myapp-label.yaml
kubectl get pod --selector app=myapp
kubectl logs --selector app=myapp
