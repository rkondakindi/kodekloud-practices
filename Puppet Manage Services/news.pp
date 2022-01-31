class nginx { 
  package { 'nginx':
    name => 'nginx',
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true 
  }
}

node 'jump_host.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
    include nginx
}
