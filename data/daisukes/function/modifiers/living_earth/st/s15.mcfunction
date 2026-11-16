# Blocs amb aquestes propietats: acacia_button, bamboo_button, birch_button, cherry_button, crimson_button, dark_oak_button...
scoreboard players set #k daisukes.earth 16
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[face=floor] run data modify storage daisukes:earth s.Properties.face set value "floor"
$execute if block ~ ~ ~ $(name)[face=wall] run data modify storage daisukes:earth s.Properties.face set value "wall"
$execute if block ~ ~ ~ $(name)[face=ceiling] run data modify storage daisukes:earth s.Properties.face set value "ceiling"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
