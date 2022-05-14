#!/bin/bash

wget --no-cache -O crio.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/CRIO1.24/crio.sh 
wget --no-cache -O K8s.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/K8s1.24/K8s.sh 

sh crio.sh
sh K8s.sh

kubeadm init


export KUBECONFIG=/etc/kubernetes/admin.conf

su pixis <<EOF
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
EOF
echo "Check"
kubectl get nodes