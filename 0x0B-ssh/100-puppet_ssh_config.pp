# configure the server to not use password auth
file_line { 'turnoff password':
  path   => 'etc/ssh/ssh_config',
  ensure => 'present',
  line   => 'PasswordAuthentication no',
}

# make the default identity file
file_line { 'set identity':
  ensure => 'present'
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
