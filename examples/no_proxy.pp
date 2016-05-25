
# include fusioninventory


node default {

  class { 'fusioninventory':
    #cronscript_enable => true ,
    no_proxy => true,
    glpiserver  => '192.168.1.2'
  }
  
}
