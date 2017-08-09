#!/bin/bash
set -ex
hostname linuxA.vm
echo '192.168.50.4 puppet' >> /etc/hosts
echo '192.168.50.6 linuxA.vm linuxA' >> /etc/hosts
#sudo apt install ntp (time sync)
#apt install puppet
#sed -i '/main/aserver=master.vm, master' /etc/puppet/puppet.conf
#systemctl restart puppet

#puppet agent -t
