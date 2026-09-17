$data modify storage daisukes:state active append from storage daisukes:temp pool[$(index)]

$data modify storage daisukes:temp macro_key.key set from storage daisukes:temp pool[$(index)]
function daisukes:engine/append_text with storage daisukes:temp macro_key

$data remove storage daisukes:temp pool[$(index)]