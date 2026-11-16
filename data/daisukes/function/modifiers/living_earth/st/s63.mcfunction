# Blocs amb aquestes propietats: creaking_heart
scoreboard players set #k daisukes.earth 64
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[axis=x] run data modify storage daisukes:earth s.Properties.axis set value "x"
$execute if block ~ ~ ~ $(name)[axis=y] run data modify storage daisukes:earth s.Properties.axis set value "y"
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
$execute if block ~ ~ ~ $(name)[creaking_heart_state=uprooted] run data modify storage daisukes:earth s.Properties.creaking_heart_state set value "uprooted"
$execute if block ~ ~ ~ $(name)[creaking_heart_state=dormant] run data modify storage daisukes:earth s.Properties.creaking_heart_state set value "dormant"
$execute if block ~ ~ ~ $(name)[creaking_heart_state=awake] run data modify storage daisukes:earth s.Properties.creaking_heart_state set value "awake"
$execute if block ~ ~ ~ $(name)[natural=true] run data modify storage daisukes:earth s.Properties.natural set value "true"
$execute if block ~ ~ ~ $(name)[natural=false] run data modify storage daisukes:earth s.Properties.natural set value "false"
