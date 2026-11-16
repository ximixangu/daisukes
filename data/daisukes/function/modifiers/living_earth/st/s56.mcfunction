# Blocs amb aquestes propietats: mangrove_propagule
scoreboard players set #k daisukes.earth 57
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[age=0] run data modify storage daisukes:earth s.Properties.age set value "0"
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
$execute if block ~ ~ ~ $(name)[age=4] run data modify storage daisukes:earth s.Properties.age set value "4"
$execute if block ~ ~ ~ $(name)[hanging=true] run data modify storage daisukes:earth s.Properties.hanging set value "true"
$execute if block ~ ~ ~ $(name)[hanging=false] run data modify storage daisukes:earth s.Properties.hanging set value "false"
$execute if block ~ ~ ~ $(name)[stage=0] run data modify storage daisukes:earth s.Properties.stage set value "0"
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
