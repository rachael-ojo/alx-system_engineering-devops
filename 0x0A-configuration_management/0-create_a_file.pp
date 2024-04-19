# Define a file resource to manage the creation of /tmp/school
file { '/tmp/school':
  ensure  => file,                  # Ensure the file exists
  content => "I love Puppet\n",     # Set the content of the file
  mode    => '0644',                # Set the file permissions (readable by all, writable by owner)
  owner   => 'www-data',            # Set the file owner
  group   => 'www-data',            # Set the file group
}

# Notify that the file resource has been defined with specific content
notify { 'File created with content':
  message => "Defined content as '{md5}f1b70c2a42a98d82224986a612400db9'",
}
