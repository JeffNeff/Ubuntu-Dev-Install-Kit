## Update the system.
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y git make gcc g++ wget curl

## Install Go.
wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:/home/$USER/go/bin' >> ~/.profile

## Install Node.
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source ~/.profile
nvm install 16
nvm use 16
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
node i yarn --global

## Install Docker.
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x ./get-docker.sh
./get-docker.sh
sudo usermod -aG docker $USER

## Install Kubectl.
sudo snap install kubectl --classic

## Install Helm.
sudo snap install helm --classic

## Install Ko.
go install github.com/google/ko@latest

## Install Microk8s.
sudo snap install microk8s --classic
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
    
## Install Kubectx.
sudo snap install kubectx --classic

## Install Kubens.
sudo snap install kubens --classic

## Install K9s.
sudo snap install k9s --classic

## Install Kustomize.
sudo snap install kustomize --classic

## Install Kompose
sudo snap install kompose --classic

## Install Kubeval.
sudo snap install kubeval --classic

## Install Google Cloud SDK.
#sudo apt-get install -y apt-transport-https ca-certificates gnupg
#echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
#curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
#sudo apt-get update && sudo apt-get install -y google-cloud-sdk

## Install AWS CLI.
sudo apt-get install -y awscli

## Install Azure CLI.
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

## Install Digital Ocean CLI.
curl -sL https://repos.insights.digitalocean.com/install.sh | sudo bash

## Install VSCode.
sudo snap install --classic code

## Install Ngrok.
sudo snap install ngrok

echo "ngrok config add-authtoken "
