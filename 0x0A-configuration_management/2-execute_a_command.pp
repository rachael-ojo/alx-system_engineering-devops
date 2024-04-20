exec { 'killmenow_process':
  command   => 'pkill killmenow',
  onlyif    => 'pgrep -x killmenow >/dev/null',
  provider  => shell,
  logoutput => true,
}
