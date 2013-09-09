class sage::sage_sshconfig {
# get the correct service name depending on O/S
  if $operatingsystem == "Ubuntu" {
    $daemonname = "ssh"
    }
  else {
    $daemonname = "sshd"
    }
 
  # make sure the ssh package is installed obviously
  package { 'openssh-server':
    ensure => installed,
    }
    
  # keep it running
  service { 'sshd':
    name => $daemonname,
    require => Package['openssh-server'],
    ensure => running,
   }

}
