# Blocs amb aquestes propietats: suspicious_gravel, suspicious_sand
scoreboard players set #k daisukes.earth 45
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[dusted=0] run data modify storage daisukes:earth s.Properties.dusted set value "0"
$execute if block ~ ~ ~ $(name)[dusted=1] run data modify storage daisukes:earth s.Properties.dusted set value "1"
$execute if block ~ ~ ~ $(name)[dusted=2] run data modify storage daisukes:earth s.Properties.dusted set value "2"
$execute if block ~ ~ ~ $(name)[dusted=3] run data modify storage daisukes:earth s.Properties.dusted set value "3"
