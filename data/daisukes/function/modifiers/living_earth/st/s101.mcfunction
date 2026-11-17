$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {pickles: "1", waterlogged: "true"}}
$execute if block ~ ~ ~ $(name)[pickles=2] run data modify storage daisukes:earth s.Properties.pickles set value "2"
$execute if block ~ ~ ~ $(name)[pickles=3] run data modify storage daisukes:earth s.Properties.pickles set value "3"
$execute if block ~ ~ ~ $(name)[pickles=4] run data modify storage daisukes:earth s.Properties.pickles set value "4"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
