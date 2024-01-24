# This manifest installs flask from pip3

package { 'python3-pip':
  ensure => 'installed',
}

package { 'Flask':
  ensure   => '2.1.0',
  require  => Package['python3-pip'],
  provider => 'pip3',
}

package { 'Werkzeug':
  ensure   => '2.2.1',
  provider => 'pip3',
  require  => Package['python3-pip']
}
