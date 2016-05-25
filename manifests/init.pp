#
# Configures fusioninventory-agent in host.
#

class fusioninventory
(
  $cronscript_enable = true,
  $glpiserver  = 'localhost',
  $no_proxy = true,
)
{
  include
  'fusioninventory::install'
  
  if ($cronscript_enable == true){
    include   'fusioninventory::cronscript'
  }
}
