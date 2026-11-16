# Blocs amb aquestes propietats: bubble_column
scoreboard players set #k daisukes.earth 76
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[drag=true] run data modify storage daisukes:earth s.Properties.drag set value "true"
$execute if block ~ ~ ~ $(name)[drag=false] run data modify storage daisukes:earth s.Properties.drag set value "false"
