$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {axis: "y", creaking_heart_state: "uprooted", natural: "false"}}
$execute if block ~ ~ ~ $(name)[axis=x] run data modify storage daisukes:earth s.Properties.axis set value "x"
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
$execute if block ~ ~ ~ $(name)[creaking_heart_state=dormant] run data modify storage daisukes:earth s.Properties.creaking_heart_state set value "dormant"
$execute if block ~ ~ ~ $(name)[creaking_heart_state=awake] run data modify storage daisukes:earth s.Properties.creaking_heart_state set value "awake"
$execute if block ~ ~ ~ $(name)[natural=true] run data modify storage daisukes:earth s.Properties.natural set value "true"
