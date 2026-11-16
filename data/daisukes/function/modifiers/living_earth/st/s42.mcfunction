# Blocs amb aquestes propietats: grass_block, mycelium, podzol
scoreboard players set #k daisukes.earth 43
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[snowy=true] run data modify storage daisukes:earth s.Properties.snowy set value "true"
$execute if block ~ ~ ~ $(name)[snowy=false] run data modify storage daisukes:earth s.Properties.snowy set value "false"
