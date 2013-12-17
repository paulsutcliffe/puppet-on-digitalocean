Exec {
  path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
}

exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

package { "nodejs":
  ensure => installed,
} 

package { "imageMagick":
  ensure => installed,
}

package { "build-essential":
  ensure => installed,
}

import "nodes.pp"

  file {
    ["/var/www/"]:
      ensure => directory,
      owner  => paul,
      group  => paul,
      mode   => 775
  }
  package {
    "bundler":
      provider => gem
  }
