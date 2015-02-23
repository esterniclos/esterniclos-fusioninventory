Puppet module to control GLPI fusion inventory agent.

Installs on  Debian, RHEL.

Configures via crontab daily inventory

See examples



-------------------------------------------------------------------

Class design


 init.pp        Main class 
 install.pp     Instalation packages
 params.pp      Common parameters
 cronscript.pp  Cron script for daily execution 


-------------------------------------------------------------------

Templates

fusioninventory.erb     cron script for daily inventory
