class sage::sage_sshconfig(

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
}
