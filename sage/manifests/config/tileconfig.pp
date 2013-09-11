define sage::config::tileconfig(

	$sage::params::tile_dimensions,
	$sage::params::tile_mullions,
	$sage::params::tile_resolution,
	$sage::params::tile_ppi,
	$sage::params::tile_machines,
	$sage::params::sage_user,
	
)inherits sage::params{

require	sage::sage_package,

file {'stdtile.conf':
	ensure	=> file,
	replace	=> true,
	path	=> '/usr/local/sage/sageConfig',
	owner	=> "${sage_user}",
	mode	=> '0644',
	content	=> template('stdtile-1.conf.erb'),
	}
	
