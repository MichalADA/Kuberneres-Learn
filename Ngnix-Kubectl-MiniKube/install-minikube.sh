sudo apt update && sudo apt upgrade -y 

# Install docker 
sudo apt install -y docker.io
sudo usermod -aG docker $USER 
docker version


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x kubectl
sudo mv kubectl /usr/local/bin/

kubectl version --client


curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube version

minikube start --driver=docker


kubectl get nodes
