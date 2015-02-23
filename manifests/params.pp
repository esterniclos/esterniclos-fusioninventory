
class fusioninventory::params

{

 $glpiserver = "localhost"
 $etc = '/etc'
 $cronscript_enable = true
  

  case $::osfamily {
    'RedHat': {
      $package_name=fusioninventory-agent
    }
    
    
    
    'Debian': {
      $package_name=fusioninventory-agent 
    }
  }  
  
}

