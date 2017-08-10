#!/bin/bash
set -ex
hostname puppet
echo '192.168.50.4 puppet' >> /etc/hosts

sudo timedatectl set-timezone America/Chicago
sudo yum -y install ntp
sudo ntpdate pool.ntp.org
sudo systemctl restart ntpd
sudo systemctl enable ntpd
#sudo ufw allow 8140
#sudo rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum -y install puppetserver

sudo systemctl start puppetserver
sudo systemctl enable puppetserver
#sudo /opt/puppetlabs/bin/puppet cert list --all
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo reboot
