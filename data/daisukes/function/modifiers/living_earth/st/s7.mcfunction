# Blocs amb aquestes propietats: andesite_wall, blackstone_wall, brick_wall, cobbled_deepslate_wall, cobblestone_wall, deepslate_brick_wall...
scoreboard players set #k daisukes.earth 8
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[east=none] run data modify storage daisukes:earth s.Properties.east set value "none"
$execute if block ~ ~ ~ $(name)[east=low] run data modify storage daisukes:earth s.Properties.east set value "low"
$execute if block ~ ~ ~ $(name)[east=tall] run data modify storage daisukes:earth s.Properties.east set value "tall"
$execute if block ~ ~ ~ $(name)[north=none] run data modify storage daisukes:earth s.Properties.north set value "none"
$execute if block ~ ~ ~ $(name)[north=low] run data modify storage daisukes:earth s.Properties.north set value "low"
$execute if block ~ ~ ~ $(name)[north=tall] run data modify storage daisukes:earth s.Properties.north set value "tall"
$execute if block ~ ~ ~ $(name)[south=none] run data modify storage daisukes:earth s.Properties.south set value "none"
$execute if block ~ ~ ~ $(name)[south=low] run data modify storage daisukes:earth s.Properties.south set value "low"
$execute if block ~ ~ ~ $(name)[south=tall] run data modify storage daisukes:earth s.Properties.south set value "tall"
$execute if block ~ ~ ~ $(name)[up=true] run data modify storage daisukes:earth s.Properties.up set value "true"
$execute if block ~ ~ ~ $(name)[up=false] run data modify storage daisukes:earth s.Properties.up set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
$execute if block ~ ~ ~ $(name)[west=none] run data modify storage daisukes:earth s.Properties.west set value "none"
$execute if block ~ ~ ~ $(name)[west=low] run data modify storage daisukes:earth s.Properties.west set value "low"
$execute if block ~ ~ ~ $(name)[west=tall] run data modify storage daisukes:earth s.Properties.west set value "tall"
