# Blocs amb aquestes propietats: tripwire
scoreboard players set #k daisukes.earth 61
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[attached=true] run data modify storage daisukes:earth s.Properties.attached set value "true"
$execute if block ~ ~ ~ $(name)[attached=false] run data modify storage daisukes:earth s.Properties.attached set value "false"
$execute if block ~ ~ ~ $(name)[disarmed=true] run data modify storage daisukes:earth s.Properties.disarmed set value "true"
$execute if block ~ ~ ~ $(name)[disarmed=false] run data modify storage daisukes:earth s.Properties.disarmed set value "false"
$execute if block ~ ~ ~ $(name)[east=true] run data modify storage daisukes:earth s.Properties.east set value "true"
$execute if block ~ ~ ~ $(name)[east=false] run data modify storage daisukes:earth s.Properties.east set value "false"
$execute if block ~ ~ ~ $(name)[north=true] run data modify storage daisukes:earth s.Properties.north set value "true"
$execute if block ~ ~ ~ $(name)[north=false] run data modify storage daisukes:earth s.Properties.north set value "false"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
$execute if block ~ ~ ~ $(name)[south=true] run data modify storage daisukes:earth s.Properties.south set value "true"
$execute if block ~ ~ ~ $(name)[south=false] run data modify storage daisukes:earth s.Properties.south set value "false"
$execute if block ~ ~ ~ $(name)[west=true] run data modify storage daisukes:earth s.Properties.west set value "true"
$execute if block ~ ~ ~ $(name)[west=false] run data modify storage daisukes:earth s.Properties.west set value "false"
