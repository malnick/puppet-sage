# SAGE Puppet Module
### Overview
Module installs the Scalable Adaptive Graphics Environment on an Ubuntu Precise (12.04LTS) machine. 

### Usage
##### On your Master Node

	# Sage Base Class, configure fsManger and sage package install
	class {'sage':
		install_sage	=> 'true',
		user			=> 'sage', # should have SSH key access
		master_password	=> 'shd123',
				
		# Pass node information. If $nodes is left out then this defualts to 'master' only on localhost,
		no parameters are required for this if you're only setting up a single master node. 
		
		nodes			=> {
			"MyNode0" => {	'type'		=> 'master',
							'ip'		=> '192/168.1.0', 
							'password' 	=> 'shd123', 
							'monitors'	=> '2 (0,0 0,1)'}, 
			"MyNode1" => { 	'type'		=> 'slave',
							'ip'	 	=> '192.168.1.1', 
							'password 	=> 'shd123', 
							'monitors 	=> '2 (0,1 1,1)'}, 
			"MyNode2" => { 	'type'		=> 'slave',
							'ip'		=> '192.168.1.2', 
							'password' 	=> 'shd123', 
							'monitors' 	=> '2 (1,1 1,0)'}} 
		}
	
	
	
##### On each Slave Node
		
		include sage