 class fusioninventory::cronscript inherits fusioninventory {


   if  $cronscript_enable {
     
     file {"$etc/cron.daily/fusioninventory":
     #  ensure => directory,
       ensure => present,
       owner => root,
       group => $admingroup,
       mode  => 755,
       
       content => template("fusioninventory/fusioninventory.erb"),
       #require => Class["postfix::install"]
       
     }
   }
   
 }
