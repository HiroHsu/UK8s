#!/bin/bash

wget --no-cache -O crio.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/CRIO1.24/crio.sh 
wget --no-cache -O K8s.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/K8s1.24/K8s.sh 
wget --no-cache -O K8s.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/K8s1.24/k8s2.sh 
sh crio.sh
sh K8s.sh

kubeadm init

sudo -s <<EOF
export KUBECONFIG=/etc/kubernetes/admin.conf
EOF

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "Check"
kubectl get nodes