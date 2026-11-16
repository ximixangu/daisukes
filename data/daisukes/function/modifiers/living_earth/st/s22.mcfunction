# Blocs amb aquestes propietats: chest, copper_chest, exposed_copper_chest, oxidized_copper_chest, trapped_chest, waxed_copper_chest...
scoreboard players set #k daisukes.earth 23
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[type=single] run data modify storage daisukes:earth s.Properties.type set value "single"
$execute if block ~ ~ ~ $(name)[type=left] run data modify storage daisukes:earth s.Properties.type set value "left"
$execute if block ~ ~ ~ $(name)[type=right] run data modify storage daisukes:earth s.Properties.type set value "right"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
