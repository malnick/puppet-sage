# SAGE Puppet Module
### Overview
Module installs the Scalable Adaptive Graphics Environment on an Ubuntu Precise (12.04LTS) machine. 

### Usage
##### On your Master Node

	# Sage Base Class, configure fsManger and sage package install
	class {'sage':
		install_sage	=> 'true',
		user			=> 'sage', # should have SSH key access
		nodes			=> {
			"MyNode1" => ['192.168.1.1', 'shd123'], 
			"MyNode2" => ['192.168.1.2', 'shd123'],} # Hash = NodeName => ['IP','Password']
		}
	
	# Display Node Configuration for stdtile-1.conf	
	sage::display {'MyNode1':	# $name = display_node in stdtile-1.conf
		display_node_ip			=> '192.168.1.1',
		display_node_monitors	=> '2 (0,0 0,1),
		}
	sage::display {'MyNode2':
		display_node_ip			=> '192.168.1.2',
		display_node_monitors	=> '2 (0,1 1,1),
		}
		
	sage::ssh_config {'MyNode1':
	
##### On each Slave Node
		
	class {'sage':
		install_sage	=> 'true',
		sage_user		=> 'sage',
		sage_sshkey		=> #####
	
	sage::ssh_config {'MyNode1':