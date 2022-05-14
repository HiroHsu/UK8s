
sudo -i
kubeadm init
export KUBECONFIG=/etc/kubernetes/admin.conf

whoami
exit
echo "Exit root"

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "Check"
kubectl get nodes