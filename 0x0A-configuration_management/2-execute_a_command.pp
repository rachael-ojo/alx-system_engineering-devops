exec { 'killmenow_process':
  command   => 'pkill killmenow',
  onlyif    => 'pgrep -x killmenow >/dev/null',
  provider  => shell,
  logoutput => true,
  notify    => Exec['debug_log'],  # Notify a debug logging resource
}

exec { 'debug_log':
  command   => 'echo "Executed killmenow_process" >> /tmp/puppet_debug.log',
  path      => '/bin',  # Specify command path if needed
  provider  => shell,
  logoutput => true,
}
