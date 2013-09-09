# SAGE Puppet Module
### Overview
Module installs the Scalable Adaptive Graphics Environment on an Ubuntu Precise (12.04LTS) machine. 

### Usage

	class {'sage':
		install_sage	=> 'true',
		sage_user		=> 'sage',
		sage_sshkey		=> #####
		
	sage::display {'MyNode1':	# $name = display_node in stdtile-1.conf
		display_node_ip			=> '192.168.1.1',
		display_node_monitors	=> '2 (0,0 0,1),
		}
	sage::display {'MyNode2':
		display_node_ip			=> '192.168.1.2',
		display_node_monitors	=> '2 (0,1 1,1),
		}