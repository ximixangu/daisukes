# Blocs amb aquestes propietats: acacia_log, acacia_wood, bamboo_block, basalt, birch_log, birch_wood...
scoreboard players set #k daisukes.earth 2
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[axis=x] run data modify storage daisukes:earth s.Properties.axis set value "x"
$execute if block ~ ~ ~ $(name)[axis=y] run data modify storage daisukes:earth s.Properties.axis set value "y"
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
