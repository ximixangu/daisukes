# Blocs amb aquestes propietats: powder_snow_cauldron, water_cauldron
scoreboard players set #k daisukes.earth 52
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[level=1] run data modify storage daisukes:earth s.Properties.level set value "1"
$execute if block ~ ~ ~ $(name)[level=2] run data modify storage daisukes:earth s.Properties.level set value "2"
$execute if block ~ ~ ~ $(name)[level=3] run data modify storage daisukes:earth s.Properties.level set value "3"
