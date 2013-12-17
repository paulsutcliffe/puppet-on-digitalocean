node 'laboralmedical' {
  include nginx
  include sudoers
  include mysql
  
  user { 'paul':
    ensure => present,
    comment => 'Paul Sutcliffe',
    home => '/home/paul',
    managehome => true,
  }
}
