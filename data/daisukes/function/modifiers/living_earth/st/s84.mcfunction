# Blocs amb aquestes propietats: piston_head
scoreboard players set #k daisukes.earth 85
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=up] run data modify storage daisukes:earth s.Properties.facing set value "up"
$execute if block ~ ~ ~ $(name)[facing=down] run data modify storage daisukes:earth s.Properties.facing set value "down"
$execute if block ~ ~ ~ $(name)[short=true] run data modify storage daisukes:earth s.Properties.short set value "true"
$execute if block ~ ~ ~ $(name)[short=false] run data modify storage daisukes:earth s.Properties.short set value "false"
$execute if block ~ ~ ~ $(name)[type=normal] run data modify storage daisukes:earth s.Properties.type set value "normal"
$execute if block ~ ~ ~ $(name)[type=sticky] run data modify storage daisukes:earth s.Properties.type set value "sticky"
