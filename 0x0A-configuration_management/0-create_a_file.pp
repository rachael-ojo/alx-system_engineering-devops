file { '/tmp/school':
  ensure  => file,           # Ensure it's a file
  mode    => '0744',         # File permission (mode)
  owner   => 'www-data',     # File owner
  group   => 'www-data',     # File group
  content => "I love Puppet\n",  # File content
}
