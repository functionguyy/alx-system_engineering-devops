# configure the server to not use password auth
file_line { '/etc/ssh/ssh_config':
  ensure => 'present',
  line   => 'PasswordAuthentication no',
}

# make the default identity file
file_line { '/etc/ssh/ssh_config':
  ensure => 'present'
  line   => 'IdentityFile ~/.ssh/school',
}
