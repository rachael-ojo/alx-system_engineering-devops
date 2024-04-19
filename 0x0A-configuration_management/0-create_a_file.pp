# Define a Puppet manifest to create a file with specific content

# Create a file '/tmp/school' with content 'I love Puppet'
file { '/tmp/school':
  ensure  => file,               # Ensure it's a regular file
  content => "I love Puppet\n",  # Specify the content of the file
  owner   => 'www-data',         # Set owner of the file
  group   => 'www-data',         # Set group of the file
  mode    => '0644',             # Set file permissions (rw-r--r--)
}

# Notify messages to indicate actions taken
notify { 'File created successfully':
  message => 'File created with content "I love Puppet"',
}
