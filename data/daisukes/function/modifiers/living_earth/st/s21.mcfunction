# Blocs amb aquestes propietats: acacia_leaves, azalea_leaves, birch_leaves, cherry_leaves, dark_oak_leaves, flowering_azalea_leaves...
scoreboard players set #k daisukes.earth 22
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[distance=1] run data modify storage daisukes:earth s.Properties.distance set value "1"
$execute if block ~ ~ ~ $(name)[distance=2] run data modify storage daisukes:earth s.Properties.distance set value "2"
$execute if block ~ ~ ~ $(name)[distance=3] run data modify storage daisukes:earth s.Properties.distance set value "3"
$execute if block ~ ~ ~ $(name)[distance=4] run data modify storage daisukes:earth s.Properties.distance set value "4"
$execute if block ~ ~ ~ $(name)[distance=5] run data modify storage daisukes:earth s.Properties.distance set value "5"
$execute if block ~ ~ ~ $(name)[distance=6] run data modify storage daisukes:earth s.Properties.distance set value "6"
$execute if block ~ ~ ~ $(name)[distance=7] run data modify storage daisukes:earth s.Properties.distance set value "7"
$execute if block ~ ~ ~ $(name)[persistent=true] run data modify storage daisukes:earth s.Properties.persistent set value "true"
$execute if block ~ ~ ~ $(name)[persistent=false] run data modify storage daisukes:earth s.Properties.persistent set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
