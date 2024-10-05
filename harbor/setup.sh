helm install harbor ./harbor-chart --namespace harbor

kubectl port-forward svc/harbor 8080:80 -n harbor