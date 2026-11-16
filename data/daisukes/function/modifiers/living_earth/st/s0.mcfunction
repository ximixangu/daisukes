# Blocs amb aquestes propietats: acacia_slab, andesite_slab, bamboo_mosaic_slab, bamboo_slab, birch_slab, blackstone_slab...
scoreboard players set #k daisukes.earth 1
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[type=top] run data modify storage daisukes:earth s.Properties.type set value "top"
$execute if block ~ ~ ~ $(name)[type=bottom] run data modify storage daisukes:earth s.Properties.type set value "bottom"
$execute if block ~ ~ ~ $(name)[type=double] run data modify storage daisukes:earth s.Properties.type set value "double"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
