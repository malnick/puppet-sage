# SAGE Puppet Module
### Overview
Module installs the Scalable Adaptive Graphics Environment on an Ubuntu Precise (12.04LTS) machine. 

### Usage

	class {'sage':
		install_sage	=> 'true',
		sage_user		=> 'sage',
		sage_sshkey		=> 