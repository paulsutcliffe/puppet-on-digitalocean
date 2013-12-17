class mysql {
  package {
    ["mysql-client", "mysql-server", "libmysqlclient-dev"]:
      ensure => installed,
  }
  service {
    "mysql":
      ensure => running,
  }
  exec {
    "mysql_password":
      unless  => "mysqladmin -uroot -proot status",
      command => "mysqladmin -uroot password root",
      require => Service[mysql];
    "laboralmedical_db":
      unless  => "mysql -uroot -proot laboralmedical2013_production",
      command => "mysql -uroot -proot -e 'create database laboralmedical2013_production'",
      require => Exec["mysql_password"]
  }
}
