# SAGE Puppet Class
# Deploy's SAGE GPU Server
# Written by Jeff Malnick
# Created on 20 April 2013
# Modified by $modifiedby$
# Modified on $modifiedon$
##########################

class sage(

	$install_sage 	= $sage::params::install_sage,
	$nodes			= $sage::params::nodes,
	
)inherits sage::params{

	if $install_sage == 'true' {
		include sage::sage_package
		}
	
	#include sage::sage_ssh		# install ssh and configure rsa key
	include sage::sageconfig 	# Configure fsManager
	include sage::sage_scripts 	# Install custom scripts
	
sshconfig {
}
