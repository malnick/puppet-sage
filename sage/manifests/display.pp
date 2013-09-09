define sage::display (
	$sage::params::display_node = $name,
	$sage::params::display_node_ip,
	$sage::params::display_node_monitors
	){
require sage::config::tileconfig

file {"Create ${display_node} template":
	path 	=> "/tmp/${display_node}_template.txt",
	content	=> template('displaynode.erb'),
	}
	
exec {"Insert ${display_node} template into stdtile.conf":
	require	=> File["Create ${display_node} template"],
	path	=> '/bin:/usr/bin',
	command	=> "echo /tmp/${display_node}_template.txt >> /usr/local/sage/sageConfig/stdtile-1.conf",
	}
