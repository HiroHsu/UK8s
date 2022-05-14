

kubeadm init

whoami

exit

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

sudo -i

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes