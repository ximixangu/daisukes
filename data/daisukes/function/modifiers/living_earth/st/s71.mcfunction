# Blocs amb aquestes propietats: respawn_anchor
scoreboard players set #k daisukes.earth 72
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[charges=0] run data modify storage daisukes:earth s.Properties.charges set value "0"
$execute if block ~ ~ ~ $(name)[charges=1] run data modify storage daisukes:earth s.Properties.charges set value "1"
$execute if block ~ ~ ~ $(name)[charges=2] run data modify storage daisukes:earth s.Properties.charges set value "2"
$execute if block ~ ~ ~ $(name)[charges=3] run data modify storage daisukes:earth s.Properties.charges set value "3"
$execute if block ~ ~ ~ $(name)[charges=4] run data modify storage daisukes:earth s.Properties.charges set value "4"
