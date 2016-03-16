class fusioninventory::cronscript inherits fusioninventory::params{
  file { "${fusioninventory::params::crondest}" :
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('fusioninventory/fusioninventory.erb'),
  }
}
