class sage::sage_ssh(

	$sshdaemon		= $sage::params::sshdaemon,
	
)inherits sage::params{

package { 'openssh-server':
	ensure => installed,
	}

# keep it running
service { $sshdaemon:
	name 	=> $sshdaemon,
	require => Package['openssh-server'],
	ensure 	=> running,
	}
	
exec {'keygen':
	path		=> '/usr/bin',
	command		=> 'echo | ssh-keygen -t rsa',
	require		=> Service[$sshdaemon],
	}
}
