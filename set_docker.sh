# installs docker settings

# install dependancies
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# add GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint oEBFCD88

# register repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

# install docker
sudo apt-get install -y docker-ce

# set permissions
sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker

# test docker
docker run hello-world
