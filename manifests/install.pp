class fusioninventory::install
inherits fusioninventory::params
{

  package {  $fusioninventory::params::pkgfusion:
    ensure => true,
  }

}
