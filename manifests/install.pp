class fusioninventory::install
inherits fusioninventory::params
{


  # Rhel 7 has to be installed as cpan
  # Cpan should be configured
  if (( $::osfamily == 'RedHat' ) and ($::operatingsystemmajrelease == '7')) {
  #  include cpan
    # class {'cpan':
    #   manage_package => false,
    # }
    # cpan { 'FusionInventory::Agent':
    #   ensure  => present,
    #   require => Class['::cpan'],
    #   force   => true,
    # }
    exec { 'install_cpan_fusioninventory-agent':
      command => '/usr/bin/cpan FusionInventory::Agent -i -f',
      unless  => '/usr/bin/test -x /usr/local/bin/fusioninventory-agent  ',
    }
  }
  
  else {
    # Debian and ubuntu nad rhel lower than 7
    package {  $fusioninventory::params::pkgfusion:
      ensure => true,
    }
  }
}


