# Blocs amb aquestes propietats: copper_chain, exposed_copper_chain, iron_chain, oxidized_copper_chain, waxed_copper_chain, waxed_exposed_copper_chain...
scoreboard players set #k daisukes.earth 25
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[axis=x] run data modify storage daisukes:earth s.Properties.axis set value "x"
$execute if block ~ ~ ~ $(name)[axis=y] run data modify storage daisukes:earth s.Properties.axis set value "y"
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
