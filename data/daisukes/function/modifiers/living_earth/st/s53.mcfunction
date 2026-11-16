# Blocs amb aquestes propietats: bamboo
scoreboard players set #k daisukes.earth 54
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[age=0] run data modify storage daisukes:earth s.Properties.age set value "0"
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[leaves=none] run data modify storage daisukes:earth s.Properties.leaves set value "none"
$execute if block ~ ~ ~ $(name)[leaves=small] run data modify storage daisukes:earth s.Properties.leaves set value "small"
$execute if block ~ ~ ~ $(name)[leaves=large] run data modify storage daisukes:earth s.Properties.leaves set value "large"
$execute if block ~ ~ ~ $(name)[stage=0] run data modify storage daisukes:earth s.Properties.stage set value "0"
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
