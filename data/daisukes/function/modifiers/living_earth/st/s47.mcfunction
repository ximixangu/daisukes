# Blocs amb aquestes propietats: pink_petals, wildflowers
scoreboard players set #k daisukes.earth 48
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[flower_amount=1] run data modify storage daisukes:earth s.Properties.flower_amount set value "1"
$execute if block ~ ~ ~ $(name)[flower_amount=2] run data modify storage daisukes:earth s.Properties.flower_amount set value "2"
$execute if block ~ ~ ~ $(name)[flower_amount=3] run data modify storage daisukes:earth s.Properties.flower_amount set value "3"
$execute if block ~ ~ ~ $(name)[flower_amount=4] run data modify storage daisukes:earth s.Properties.flower_amount set value "4"
