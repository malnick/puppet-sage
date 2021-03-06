class sage::params{
	#################
	#  Basic Stuff  #
	#################
	
	$user				= 'UNSET'
	$master_password	= 'UNSET'
	$master_ip			= 'UNSET'
	$install_sage		= 'true' # Default is 'install SAGE'
	$nodes				='UNSET'
	
	#################
	#    Display    #
	#################
	
	$tile_dimensions		= '1 1'
	$tile_mullions			= '0.0 0.0 0.0 0.0'
	$tile_resolution		= '800 600'
	$tile_ppi				= '90'
	$tile_machines			= '1'
	$display_node			= 'localhost'
	$display_node_ip		= '127.0.0.1
	$display_node_monitors	= '1 (0,0)'
	
	#################
	#   fsManager   #
	#################
	
	$fsManager_ip			= '127.0.0.1'
	$systemPort				= '20002'
	$uiPort					= '20001'
	$trackPort				= '20003'
	$conManager				= '127.0.0.1 15557'
	$tileConfiguration		= 'stdtile-1.conf'
	
	#################
	#   SSH Config  #
	#################

	if 
	
	if $operatingsystem == "Ubuntu" {
    	$sshdaemon = "ssh"
    	}
  	else {
   		$sshdaemon = "sshd"
    	}
	
}