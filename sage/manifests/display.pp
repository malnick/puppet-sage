define sage::display (

	$type,
	$ip,
	$password,
	$monitors
	
)inherits sage::params{
	
require sage::config::tileconfig

$display_node = $name,

if $type == 'master'{
	$master_ip	== $ip
	}

file {"Create ${display_node} template":
	path 	=> "/tmp/${display_node}_template.txt",
	content	=> template('displaynode.erb'),
	}
	
exec {"Insert ${display_node} template into stdtile.conf":
	require	=> File["Create ${display_node} template"],
	path	=> '/bin:/usr/bin',
	command	=> "echo /tmp/${display_node}_template.txt >> /usr/local/sage/sageConfig/stdtile-1.conf",
	}

# Configure SSH no password 

sage::config:sshconfig { $display_node:
	node_ip			=> $ip,
	node_password	=> $password,