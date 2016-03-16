class fusioninventory
(
  $cronscript_enable = true,
  $glpiserver  = 'localhost',
)
{
  include
  'fusioninventory::install'
  
  if ($cronscript_enable){
    include   'fusioninventory::cronscript'
  }
}
