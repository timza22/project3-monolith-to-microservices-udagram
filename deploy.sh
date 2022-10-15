kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy reverseproxy
kubectl delete deploy frontend

kubectl apply -f backend-feed-deploy.yml
kubectl apply -f backend-user-deploy.yml
kubectl apply -f reverseproxy.yml
kubectl apply -f backend-frontend.yml