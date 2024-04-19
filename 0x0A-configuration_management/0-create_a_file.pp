# Define a Puppet manifest to create a file with specific content

# Create a file '/tmp/school' with content 'I love Puppet'
file { '/tmp/school':
  ensure  => file,               # Ensure it's a regular file
  content => "I love Puppet\n",  # Specify the content of the file
  owner   => 'www-data',         # Set owner of the file
  group   => 'www-data',         # Set group of the file
  mode    => '0644',             # Set file permissions (rw-r--r--)
}

# Execute a command to display the desired message after Puppet run
exec { 'display_message':
  command     => 'echo "I love Puppet"',
  path        => '/bin',  # Specify the command path
  refreshonly => true,    # Only run when notified
  subscribe   => File['/tmp/school'],  # Trigger after file creation
}
