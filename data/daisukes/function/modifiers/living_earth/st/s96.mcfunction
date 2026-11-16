# Blocs amb aquestes propietats: jukebox
scoreboard players set #k daisukes.earth 97
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[has_record=true] run data modify storage daisukes:earth s.Properties.has_record set value "true"
$execute if block ~ ~ ~ $(name)[has_record=false] run data modify storage daisukes:earth s.Properties.has_record set value "false"
