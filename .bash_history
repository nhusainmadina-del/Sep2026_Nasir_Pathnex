sudo yum update
pwd
sudo yum install git
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform
https://rpm.releases.hashicorp.com/RHEL/2023.12.20260831/x86_64/stable/...
cat /etc/os-release
NAME="Amazon Linux"
VERSION="2023"
sudo rm -f /etc/yum.repos.d/hashicorp.repo
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum clean all
sudo rm -rf /var/cache/yum
sudo dnf clean all
sudo yum repolist
hashicorp    Hashicorp Stable - x86_64
sudo yum install -y terraform
ssh pathnex@13.235.133.252
