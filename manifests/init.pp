# manifests/init.pp
class dbdemo {
  $database_password = lookup('database_password')

  file { '/etc/my_config_file.conf':
    ensure  => present,
    content => "database_password=${database_password}",
  }
}


