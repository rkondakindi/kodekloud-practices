class official {
   file { '/opt/security/official.txt':
      ensure => 'present',
      content => 'Welcome to xFusionCorp Industries!',
      mode => '0744'
   }
}

node 'jump_host.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com' {
    include official
}
