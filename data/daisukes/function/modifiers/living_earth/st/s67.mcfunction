# Blocs amb aquestes propietats: sculk_catalyst
scoreboard players set #k daisukes.earth 68
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[bloom=true] run data modify storage daisukes:earth s.Properties.bloom set value "true"
$execute if block ~ ~ ~ $(name)[bloom=false] run data modify storage daisukes:earth s.Properties.bloom set value "false"
