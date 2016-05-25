
# include fusioninventory


node default {

  class { 'fusioninventory':
    cronscript_enable => false,
#    no_proxy => false,
    glpiserver  => '192.168.1.2'
  }
  
}
