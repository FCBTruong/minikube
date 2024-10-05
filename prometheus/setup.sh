# Pull Prometheus Helm Chart
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm pull prometheus-community/prometheus --untar --destination /path/to/your/folder

# Install Prometheus
helm install prometheus ./ --namespace monitoring --create-namespace

# Forward to browser
kubectl port-forward --namespace monitoring svc/prometheous-prometheus-server 9090:80