# Blocs amb aquestes propietats: turtle_egg
scoreboard players set #k daisukes.earth 79
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[eggs=1] run data modify storage daisukes:earth s.Properties.eggs set value "1"
$execute if block ~ ~ ~ $(name)[eggs=2] run data modify storage daisukes:earth s.Properties.eggs set value "2"
$execute if block ~ ~ ~ $(name)[eggs=3] run data modify storage daisukes:earth s.Properties.eggs set value "3"
$execute if block ~ ~ ~ $(name)[eggs=4] run data modify storage daisukes:earth s.Properties.eggs set value "4"
$execute if block ~ ~ ~ $(name)[hatch=0] run data modify storage daisukes:earth s.Properties.hatch set value "0"
$execute if block ~ ~ ~ $(name)[hatch=1] run data modify storage daisukes:earth s.Properties.hatch set value "1"
$execute if block ~ ~ ~ $(name)[hatch=2] run data modify storage daisukes:earth s.Properties.hatch set value "2"
