set -ex
hostname butthead
echo '192.168.50.4 puppet' >> /etc/hosts
echo '192.168.50.6 butthead' >> /etc/hosts
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum -y install puppet-agent
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

#sed -i '/main/aserver=master.vm, master' /etc/puppet/puppet.conf
#systemctl restart puppet
puppet agent -t
