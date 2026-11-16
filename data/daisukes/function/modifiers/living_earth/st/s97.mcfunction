# Blocs amb aquestes propietats: sniffer_egg
scoreboard players set #k daisukes.earth 98
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[hatch=0] run data modify storage daisukes:earth s.Properties.hatch set value "0"
$execute if block ~ ~ ~ $(name)[hatch=1] run data modify storage daisukes:earth s.Properties.hatch set value "1"
$execute if block ~ ~ ~ $(name)[hatch=2] run data modify storage daisukes:earth s.Properties.hatch set value "2"
