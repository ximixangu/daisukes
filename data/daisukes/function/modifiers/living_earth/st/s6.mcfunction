# Blocs amb aquestes propietats: barrier, brain_coral, brain_coral_fan, bubble_coral, bubble_coral_fan, conduit...
scoreboard players set #k daisukes.earth 7
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
