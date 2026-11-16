# Blocs amb aquestes propietats: tnt
scoreboard players set #k daisukes.earth 114
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[unstable=true] run data modify storage daisukes:earth s.Properties.unstable set value "true"
$execute if block ~ ~ ~ $(name)[unstable=false] run data modify storage daisukes:earth s.Properties.unstable set value "false"
