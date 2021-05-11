#!/bin/bash

sudo apt install curl -y;

curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip' ;
sudo apt install unzip -y ;
unzip -o awscliv2.zip ;
sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin ;
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/aws-iam-authenticator ;
chmod +x ./aws-iam-authenticator ;
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin ;
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc ;

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" ;
sudo mv ./kubectl /usr/local/bin/ ;
sudo chmod +x /usr/local/bin/kubectl
