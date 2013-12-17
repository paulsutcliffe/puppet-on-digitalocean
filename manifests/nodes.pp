node 'laboralmedical' {
  include nginx
  
  user { 'paul':
    ensure => present,
    comment => 'Paul Sutcliffe',
    home => '/home/paul',
    managehome => true,
  }
}
