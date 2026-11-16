# Blocs amb aquestes propietats: structure_block
scoreboard players set #k daisukes.earth 104
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[mode=save] run data modify storage daisukes:earth s.Properties.mode set value "save"
$execute if block ~ ~ ~ $(name)[mode=load] run data modify storage daisukes:earth s.Properties.mode set value "load"
$execute if block ~ ~ ~ $(name)[mode=corner] run data modify storage daisukes:earth s.Properties.mode set value "corner"
$execute if block ~ ~ ~ $(name)[mode=data] run data modify storage daisukes:earth s.Properties.mode set value "data"
