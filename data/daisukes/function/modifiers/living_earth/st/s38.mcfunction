# Blocs amb aquestes propietats: chain_command_block, command_block, repeating_command_block
scoreboard players set #k daisukes.earth 39
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[conditional=true] run data modify storage daisukes:earth s.Properties.conditional set value "true"
$execute if block ~ ~ ~ $(name)[conditional=false] run data modify storage daisukes:earth s.Properties.conditional set value "false"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=up] run data modify storage daisukes:earth s.Properties.facing set value "up"
$execute if block ~ ~ ~ $(name)[facing=down] run data modify storage daisukes:earth s.Properties.facing set value "down"
