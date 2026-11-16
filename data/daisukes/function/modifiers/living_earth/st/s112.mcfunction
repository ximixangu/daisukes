# Blocs amb aquestes propietats: pale_hanging_moss
scoreboard players set #k daisukes.earth 113
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[tip=true] run data modify storage daisukes:earth s.Properties.tip set value "true"
$execute if block ~ ~ ~ $(name)[tip=false] run data modify storage daisukes:earth s.Properties.tip set value "false"
