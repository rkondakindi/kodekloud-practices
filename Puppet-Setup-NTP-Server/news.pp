# Run below command to install ntp module before applying manifest file
# puppet module install puppetlabs-ntp --target /etc/puppetlabs/code/environments/production/modules/

class { 'ntp':
    servers => [ 'server 3.pool.ntp.org iburst' ],
}

class ntpconfig {
    include ntp
}

node 'jump_host.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
    include ntpconfig
}
