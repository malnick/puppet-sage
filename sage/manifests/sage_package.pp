class sage::sage_package { 

file { "/home/sage_3.3-4_amd64.deb":
         ensure => present,
         source => "puppet:///modules/sage/sage_3.3-4_amd64.deb",
    }

    package {"sage_3.3-4_amd64":
         require  => File['/home/sage_3.3-4_amd64.deb'],
         ensure   => installed,
         source   => "/home/sage_3.3-4_amd64.deb",
         provider => dpkg,
    }

}
