# Blocs amb aquestes propietats: sea_pickle
scoreboard players set #k daisukes.earth 109
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[pickles=1] run data modify storage daisukes:earth s.Properties.pickles set value "1"
$execute if block ~ ~ ~ $(name)[pickles=2] run data modify storage daisukes:earth s.Properties.pickles set value "2"
$execute if block ~ ~ ~ $(name)[pickles=3] run data modify storage daisukes:earth s.Properties.pickles set value "3"
$execute if block ~ ~ ~ $(name)[pickles=4] run data modify storage daisukes:earth s.Properties.pickles set value "4"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
