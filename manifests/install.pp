class fusioninventory::install
inherits fusioninventory::params
{


  # Rhel 7 has to be installed as cpan
  # Cpan should be configured
  if (( $::osfamily != "RedHat" ) and ($::os::release::major == '7')) {
    include cpan
    cpan { "Clone::Closure":
      ensure  => present,
      require => Class['FusionInventory::Agent'],
      force   => true,
    }
    
    }
  else {
    # Debian and ubuntu
    package {  $fusioninventory::params::pkgfusion:
        ensure => true,
    }
  }
}
