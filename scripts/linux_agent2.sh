#!/bin/bash
set -ex
hostname linux2.vm
echo '192.168.50.4 puppet' >> /etc/hosts
echo '192.168.50.6 linux2.vm linux2' >> /etc/hosts
#apt install puppet
#sed -i '/main/aserver=master.vm, master' /etc/puppet/puppet.conf
#systemctl restart puppet

#puppet agent -t
