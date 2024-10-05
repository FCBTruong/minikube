helm install harbor ./harbor-chart --namespace harbor

kubectl port-forward svc/harbor 8081:80 -n harbor