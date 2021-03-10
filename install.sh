#!/bin/bash
#------------------------------------------
# Usage:
# to install eksctl, kubectl and helm, run
# bash install.sh
#------------------------------------------

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
echo "eksctl version"
eksctl version

curl --silent -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod 755 kubectl; sudo mv kubectl /usr/local/bin/kubectl
echo "kubectl version"
kubectl version --client

curl --silent -LO https://get.helm.sh/helm-v3.5.3-linux-amd64.tar.gz
tar -zxvf helm-v3.5.3-linux-amd64.tar.gz linux-amd64/helm
sudo mv linux-amd64/helm /usr/local/bin/helm
echo "helm version"
helm version
rm -rf helm-v3.5.3-linux-amd64.tar.gz linux-amd64


curl --silent "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -qq awscliv2.zip
sudo ./aws/install
echo "aws version"
aws --version
rm -rf awscliv2.zip aws