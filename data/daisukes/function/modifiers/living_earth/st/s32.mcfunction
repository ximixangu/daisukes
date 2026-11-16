# Blocs amb aquestes propietats: carrots, melon_stem, potatoes, pumpkin_stem, wheat
scoreboard players set #k daisukes.earth 33
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[age=0] run data modify storage daisukes:earth s.Properties.age set value "0"
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
$execute if block ~ ~ ~ $(name)[age=4] run data modify storage daisukes:earth s.Properties.age set value "4"
$execute if block ~ ~ ~ $(name)[age=5] run data modify storage daisukes:earth s.Properties.age set value "5"
$execute if block ~ ~ ~ $(name)[age=6] run data modify storage daisukes:earth s.Properties.age set value "6"
$execute if block ~ ~ ~ $(name)[age=7] run data modify storage daisukes:earth s.Properties.age set value "7"
