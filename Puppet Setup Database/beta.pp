class mysql_database {
  package { 'mariadb-server':
    name => 'mariadb-server',
    ensure => installed,
  }

  service { 'mariadb':
    ensure => running,
    enable => true,
  }

  mysql::db { 'kodekloud_db7':
    user => 'kodekloud_rin',
    password => 'GyQkFRVNr3',
    host => 'localhost',
    grant => ['SELECT', 'UPDATE'],
  }
}

node 'jump_host.stratos.xfusioncorp.com','stdb01.stratos.xfusioncorp.com' {
    include mysql_database
}
