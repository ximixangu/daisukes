# Blocs amb aquestes propietats: activator_rail, detector_rail, powered_rail
scoreboard players set #k daisukes.earth 42
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
$execute if block ~ ~ ~ $(name)[shape=north_south] run data modify storage daisukes:earth s.Properties.shape set value "north_south"
$execute if block ~ ~ ~ $(name)[shape=east_west] run data modify storage daisukes:earth s.Properties.shape set value "east_west"
$execute if block ~ ~ ~ $(name)[shape=ascending_east] run data modify storage daisukes:earth s.Properties.shape set value "ascending_east"
$execute if block ~ ~ ~ $(name)[shape=ascending_west] run data modify storage daisukes:earth s.Properties.shape set value "ascending_west"
$execute if block ~ ~ ~ $(name)[shape=ascending_north] run data modify storage daisukes:earth s.Properties.shape set value "ascending_north"
$execute if block ~ ~ ~ $(name)[shape=ascending_south] run data modify storage daisukes:earth s.Properties.shape set value "ascending_south"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
