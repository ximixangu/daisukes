# Blocs amb aquestes propietats: acacia_shelf, bamboo_shelf, birch_shelf, cherry_shelf, crimson_shelf, dark_oak_shelf...
scoreboard players set #k daisukes.earth 20
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
$execute if block ~ ~ ~ $(name)[side_chain=unconnected] run data modify storage daisukes:earth s.Properties.side_chain set value "unconnected"
$execute if block ~ ~ ~ $(name)[side_chain=right] run data modify storage daisukes:earth s.Properties.side_chain set value "right"
$execute if block ~ ~ ~ $(name)[side_chain=center] run data modify storage daisukes:earth s.Properties.side_chain set value "center"
$execute if block ~ ~ ~ $(name)[side_chain=left] run data modify storage daisukes:earth s.Properties.side_chain set value "left"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
