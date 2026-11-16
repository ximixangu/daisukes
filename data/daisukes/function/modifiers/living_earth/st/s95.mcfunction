# Blocs amb aquestes propietats: brewing_stand
scoreboard players set #k daisukes.earth 96
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[has_bottle_0=true] run data modify storage daisukes:earth s.Properties.has_bottle_0 set value "true"
$execute if block ~ ~ ~ $(name)[has_bottle_0=false] run data modify storage daisukes:earth s.Properties.has_bottle_0 set value "false"
$execute if block ~ ~ ~ $(name)[has_bottle_1=true] run data modify storage daisukes:earth s.Properties.has_bottle_1 set value "true"
$execute if block ~ ~ ~ $(name)[has_bottle_1=false] run data modify storage daisukes:earth s.Properties.has_bottle_1 set value "false"
$execute if block ~ ~ ~ $(name)[has_bottle_2=true] run data modify storage daisukes:earth s.Properties.has_bottle_2 set value "true"
$execute if block ~ ~ ~ $(name)[has_bottle_2=false] run data modify storage daisukes:earth s.Properties.has_bottle_2 set value "false"
