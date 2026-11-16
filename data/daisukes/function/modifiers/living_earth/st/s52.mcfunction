# Blocs amb aquestes propietats: torchflower_crop
scoreboard players set #k daisukes.earth 53
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[age=0] run data modify storage daisukes:earth s.Properties.age set value "0"
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
