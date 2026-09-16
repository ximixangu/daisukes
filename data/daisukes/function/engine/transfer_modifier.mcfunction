$data modify storage daisukes:state active append from storage daisukes:temp pool[$(index)]
$data remove storage daisukes:temp pool[$(index)]