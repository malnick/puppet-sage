define sage::ssh_config (
	
){

if $operatingsystem == "Ubuntu" {
    $daemonname = "ssh"
    }
  else {
    $daemonname = "sshd"
    }
service{$daemonname:
	ensure 		=> running,
	refreshonly => true,
	}




}