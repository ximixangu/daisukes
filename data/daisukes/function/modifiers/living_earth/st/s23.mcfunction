# Blocs amb aquestes propietats: copper_lantern, exposed_copper_lantern, lantern, oxidized_copper_lantern, soul_lantern, waxed_copper_lantern...
scoreboard players set #k daisukes.earth 24
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[hanging=true] run data modify storage daisukes:earth s.Properties.hanging set value "true"
$execute if block ~ ~ ~ $(name)[hanging=false] run data modify storage daisukes:earth s.Properties.hanging set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
