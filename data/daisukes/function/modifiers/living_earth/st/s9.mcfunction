# Blocs amb aquestes propietats: acacia_door, bamboo_door, birch_door, cherry_door, copper_door, crimson_door...
scoreboard players set #k daisukes.earth 10
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[half=upper] run data modify storage daisukes:earth s.Properties.half set value "upper"
$execute if block ~ ~ ~ $(name)[half=lower] run data modify storage daisukes:earth s.Properties.half set value "lower"
$execute if block ~ ~ ~ $(name)[hinge=left] run data modify storage daisukes:earth s.Properties.hinge set value "left"
$execute if block ~ ~ ~ $(name)[hinge=right] run data modify storage daisukes:earth s.Properties.hinge set value "right"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
$execute if block ~ ~ ~ $(name)[open=false] run data modify storage daisukes:earth s.Properties.open set value "false"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
