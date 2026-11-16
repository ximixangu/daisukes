# Blocs amb aquestes propietats: repeater
scoreboard players set #k daisukes.earth 75
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[delay=1] run data modify storage daisukes:earth s.Properties.delay set value "1"
$execute if block ~ ~ ~ $(name)[delay=2] run data modify storage daisukes:earth s.Properties.delay set value "2"
$execute if block ~ ~ ~ $(name)[delay=3] run data modify storage daisukes:earth s.Properties.delay set value "3"
$execute if block ~ ~ ~ $(name)[delay=4] run data modify storage daisukes:earth s.Properties.delay set value "4"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[locked=true] run data modify storage daisukes:earth s.Properties.locked set value "true"
$execute if block ~ ~ ~ $(name)[locked=false] run data modify storage daisukes:earth s.Properties.locked set value "false"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
