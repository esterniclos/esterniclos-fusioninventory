
# include fusioninventory


node default {

  class { 'fusioninventory':
    #cronscript_enable => true ,
    
    glpiserver  => '192.168.1.2'
  }
  
}
