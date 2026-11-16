# Blocs amb aquestes propietats: blast_furnace, furnace, redstone_wall_torch, smoker
scoreboard players set #k daisukes.earth 37
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[lit=true] run data modify storage daisukes:earth s.Properties.lit set value "true"
$execute if block ~ ~ ~ $(name)[lit=false] run data modify storage daisukes:earth s.Properties.lit set value "false"
