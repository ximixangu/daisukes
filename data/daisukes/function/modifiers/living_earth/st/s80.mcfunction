# Blocs amb aquestes propietats: end_portal_frame
scoreboard players set #k daisukes.earth 81
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[eye=true] run data modify storage daisukes:earth s.Properties.eye set value "true"
$execute if block ~ ~ ~ $(name)[eye=false] run data modify storage daisukes:earth s.Properties.eye set value "false"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
