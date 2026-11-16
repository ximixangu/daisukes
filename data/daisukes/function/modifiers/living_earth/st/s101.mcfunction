# Blocs amb aquestes propietats: composter
scoreboard players set #k daisukes.earth 102
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[level=0] run data modify storage daisukes:earth s.Properties.level set value "0"
$execute if block ~ ~ ~ $(name)[level=1] run data modify storage daisukes:earth s.Properties.level set value "1"
$execute if block ~ ~ ~ $(name)[level=2] run data modify storage daisukes:earth s.Properties.level set value "2"
$execute if block ~ ~ ~ $(name)[level=3] run data modify storage daisukes:earth s.Properties.level set value "3"
$execute if block ~ ~ ~ $(name)[level=4] run data modify storage daisukes:earth s.Properties.level set value "4"
$execute if block ~ ~ ~ $(name)[level=5] run data modify storage daisukes:earth s.Properties.level set value "5"
$execute if block ~ ~ ~ $(name)[level=6] run data modify storage daisukes:earth s.Properties.level set value "6"
$execute if block ~ ~ ~ $(name)[level=7] run data modify storage daisukes:earth s.Properties.level set value "7"
$execute if block ~ ~ ~ $(name)[level=8] run data modify storage daisukes:earth s.Properties.level set value "8"
