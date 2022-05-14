
sudo su
whoami


wget https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/CRIO1.24/crio.sh
wget https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/K8s1.24/K8s.sh

source crio.sh
source K8s.sh

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