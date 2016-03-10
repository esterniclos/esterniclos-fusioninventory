


class fusioninventory

(
  $cronscript_enable = $fusioninventory::params::cronscript_enable,
  $glpiserver  = $fusioninventory::params::glpiserver

)
inherits fusioninventory::params {

  include
  'fusioninventory::install',
  'fusioninventory::cronscript'


  

}
