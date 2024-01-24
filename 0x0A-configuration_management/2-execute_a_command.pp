# This manifest kills a process named killmenow
exec {'pkill':
  command     => '/usr/bin/pkill -f killmenow',
  refreshonly => true,
  onlyif      => '/usr/bin/pgrep killmenow'
}
