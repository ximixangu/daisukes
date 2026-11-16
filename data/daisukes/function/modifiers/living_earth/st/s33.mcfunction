# Blocs amb aquestes propietats: beetroots, frosted_ice, nether_wart, sweet_berry_bush
scoreboard players set #k daisukes.earth 34
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[age=0] run data modify storage daisukes:earth s.Properties.age set value "0"
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
