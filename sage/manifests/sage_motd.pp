# sage::motd subclass
# Sets message of the day for Gov't GPU server running SAGE

class sage::sage_motd {
	file {'motd':
		path => '/etc/motd',
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => 0644,
		source => 'puppet:///modules/sage/motd',
	}
	if ( $verbose == "yes" ) or ( $verbose == true ) { notify { "sage::motd": } }
}
