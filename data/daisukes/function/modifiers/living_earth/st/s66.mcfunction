# Blocs amb aquestes propietats: cake
scoreboard players set #k daisukes.earth 67
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[bites=0] run data modify storage daisukes:earth s.Properties.bites set value "0"
$execute if block ~ ~ ~ $(name)[bites=1] run data modify storage daisukes:earth s.Properties.bites set value "1"
$execute if block ~ ~ ~ $(name)[bites=2] run data modify storage daisukes:earth s.Properties.bites set value "2"
$execute if block ~ ~ ~ $(name)[bites=3] run data modify storage daisukes:earth s.Properties.bites set value "3"
$execute if block ~ ~ ~ $(name)[bites=4] run data modify storage daisukes:earth s.Properties.bites set value "4"
$execute if block ~ ~ ~ $(name)[bites=5] run data modify storage daisukes:earth s.Properties.bites set value "5"
$execute if block ~ ~ ~ $(name)[bites=6] run data modify storage daisukes:earth s.Properties.bites set value "6"
