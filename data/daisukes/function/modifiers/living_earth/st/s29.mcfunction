# Blocs amb aquestes propietats: acacia_sapling, birch_sapling, cherry_sapling, dark_oak_sapling, jungle_sapling, oak_sapling...
scoreboard players set #k daisukes.earth 30
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[stage=0] run data modify storage daisukes:earth s.Properties.stage set value "0"
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
