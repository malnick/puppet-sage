class sage::config::sageconfig(

	$sage_user 			= $sage::params::sage_user,
	$fsManager_ip 		= $sage::params::fsManager_ip,
	$systemPort			= $sage::params::systemPort,
	$uiPort				= $sage::params::uiPort,
	$trackPort			= $sage::params::trackPort,
	$conManager			= $sage::params::conManager,
	$tileConfiguration	= $sage::params::tileConfiguration

)inherits sage::params{


file {"fsManager.conf":
	ensure	=> file,
	replace	=> true,
	path	=> '/usr/local/sage/sageConfig',
	owner	=> "${sage_user}",
	mode	=> '0644',
	content	=> template('fsManager.conf.erb'),
	}

}