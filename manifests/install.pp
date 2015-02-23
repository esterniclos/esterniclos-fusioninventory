class fusioninventory::install inherits fusioninventory {

  package { $package_name:
    ensure => $package_ensure,
  }

}
