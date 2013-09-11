# Ubuntu scripts for SAGE environmnet

class sage::sage_scripts {

	# Autostart SAGE at X Window Login:
	file {'sage.desktop':
	path => '/etc/xdg/autostart/sage.desktop',
	owner => 'root',
	group => 'root',
	mode => '0644',
	source => 'puppet:///modules/sage/sage.desktop',
	#notify { "File: sage.desktop placed at /etc/xdg/autostart/": } 
	}
	
	file {'StartSage':
	path => '/usr/local/bin/StartSage',
	owner => 'root',
	group => 'root',
	mode => '0755',
	source => 'puppet:///modules/sage/StartSage',
	#notify { "File: StartSage placed at /usr/local/bin/": }
	}
	
	# Force Display Power Managment Off at X Login	
	file {'dpms-off.desktop':
	path => '/etc/xdg/autostart/dpms-off.desktop',
	owner => 'root',
	group => 'root',
	mode => '0644',
	source => 'puppet:///modules/sage/dpms-off.desktop',
	}
	
	file {'dpmsoff':
	path => '/usr/local/bin/dpmsoff',
	owner => 'root',
	group => 'root',
	mode => '0755',
	source => 'puppet:///modules/sage/dpmsoff',
	}
}

