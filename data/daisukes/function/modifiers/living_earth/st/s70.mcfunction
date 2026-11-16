# Blocs amb aquestes propietats: sculk_shrieker
scoreboard players set #k daisukes.earth 71
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[can_summon=true] run data modify storage daisukes:earth s.Properties.can_summon set value "true"
$execute if block ~ ~ ~ $(name)[can_summon=false] run data modify storage daisukes:earth s.Properties.can_summon set value "false"
$execute if block ~ ~ ~ $(name)[shrieking=true] run data modify storage daisukes:earth s.Properties.shrieking set value "true"
$execute if block ~ ~ ~ $(name)[shrieking=false] run data modify storage daisukes:earth s.Properties.shrieking set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
