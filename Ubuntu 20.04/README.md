# Step
wget -O master.sh https://raw.githubusercontent.com/HiroHsu/UK8s/main/Ubuntu%2020.04/k8s124.sh
sh k8s124.sh



save message like this

Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 192.168.106.146:6443 --token 4ivyeh.kbv525nfn93iar1j \
        --discovery-token-ca-cert-hash sha256:8db98fbff2adf4682d9019d88faaa6d449b7ef6

#### copy the token string generated and save it for further usage




