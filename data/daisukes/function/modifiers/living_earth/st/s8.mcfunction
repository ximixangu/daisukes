# Blocs amb aquestes propietats: acacia_trapdoor, bamboo_trapdoor, birch_trapdoor, cherry_trapdoor, copper_trapdoor, crimson_trapdoor...
scoreboard players set #k daisukes.earth 9
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[half=top] run data modify storage daisukes:earth s.Properties.half set value "top"
$execute if block ~ ~ ~ $(name)[half=bottom] run data modify storage daisukes:earth s.Properties.half set value "bottom"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
$execute if block ~ ~ ~ $(name)[open=false] run data modify storage daisukes:earth s.Properties.open set value "false"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
