1. Install aws, helm, kubectl, eksctl - run
# bash install.sh

2. Create EKS cluster
# eksctl create cluster -f eks-cluster.yaml
# eksctl utils describe-stacks --region=eu-central-1 --cluster=apps-cluster-01

3. Check helm chart and deploy the application
# helm template nginx nginx-chart/
# helm install my-nginx nginx-chart/

4. Validate deployment
# helm list
# kubectl get pods --output=wide
# kubectl get deploy --output=wide
# kubectl get svc --output=wide
# kubectl describe deployments nginx-deployment
# kubectl get replicasets
# kubectl describe services nginx-service

5.Destroy EKS cluster
# eksctl delete cluster -f eks-cluster.yaml.
