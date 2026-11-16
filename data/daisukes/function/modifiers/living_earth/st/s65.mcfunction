# Blocs amb aquestes propietats: cave_vines_plant
scoreboard players set #k daisukes.earth 66
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[berries=true] run data modify storage daisukes:earth s.Properties.berries set value "true"
$execute if block ~ ~ ~ $(name)[berries=false] run data modify storage daisukes:earth s.Properties.berries set value "false"
