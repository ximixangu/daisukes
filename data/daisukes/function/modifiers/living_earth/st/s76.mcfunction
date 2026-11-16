# Blocs amb aquestes propietats: vine
scoreboard players set #k daisukes.earth 77
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[east=true] run data modify storage daisukes:earth s.Properties.east set value "true"
$execute if block ~ ~ ~ $(name)[east=false] run data modify storage daisukes:earth s.Properties.east set value "false"
$execute if block ~ ~ ~ $(name)[north=true] run data modify storage daisukes:earth s.Properties.north set value "true"
$execute if block ~ ~ ~ $(name)[north=false] run data modify storage daisukes:earth s.Properties.north set value "false"
$execute if block ~ ~ ~ $(name)[south=true] run data modify storage daisukes:earth s.Properties.south set value "true"
$execute if block ~ ~ ~ $(name)[south=false] run data modify storage daisukes:earth s.Properties.south set value "false"
$execute if block ~ ~ ~ $(name)[up=true] run data modify storage daisukes:earth s.Properties.up set value "true"
$execute if block ~ ~ ~ $(name)[up=false] run data modify storage daisukes:earth s.Properties.up set value "false"
$execute if block ~ ~ ~ $(name)[west=true] run data modify storage daisukes:earth s.Properties.west set value "true"
$execute if block ~ ~ ~ $(name)[west=false] run data modify storage daisukes:earth s.Properties.west set value "false"
