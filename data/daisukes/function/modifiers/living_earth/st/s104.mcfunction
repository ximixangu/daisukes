$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {mode: "load"}}
$execute if block ~ ~ ~ $(name)[mode=save] run data modify storage daisukes:earth s.Properties.mode set value "save"
$execute if block ~ ~ ~ $(name)[mode=corner] run data modify storage daisukes:earth s.Properties.mode set value "corner"
$execute if block ~ ~ ~ $(name)[mode=data] run data modify storage daisukes:earth s.Properties.mode set value "data"
