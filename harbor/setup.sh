helm install harbor ./harbor-chart --namespace harbor

kubectl port-forward svc/harbor 8081:80 -n harbor # HTTP
kubectl port-forward svc/harbor 8081:443 -n harbor # HTTPS