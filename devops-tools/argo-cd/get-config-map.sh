kubectl get configmap argocd-cm -n argocd -o yaml > argocd-cm.yaml

kubectl apply -f argocd-cm.yaml -n argocd

kubectl rollout restart deployment argocd-server -n argocd
kubectl rollout restart deployment argocd-repo-server -n argocd
