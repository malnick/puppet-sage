# SAGE Puppet Class
# Deploy's SAGE GPU Server
# Written by Jeff Malnick
# Created on 20 April 2013
# Modified by $modifiedby$
# Modified on $modifiedon$
##########################

class sage{
	include sage::params

	if $install_sage == 'true' {
		include sage::sage_package
		}
		
	include sage::log
	include sage::sage_sshconfig
	include sage::sage_scripts

	if ( $verbose == "yes" ) or ( $verbose == true ) { notify { "sage::": } }
}
