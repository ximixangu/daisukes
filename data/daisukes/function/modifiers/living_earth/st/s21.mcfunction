$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {age: "0", leaves: "none", stage: "0"}}
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[leaves=small] run data modify storage daisukes:earth s.Properties.leaves set value "small"
$execute if block ~ ~ ~ $(name)[leaves=large] run data modify storage daisukes:earth s.Properties.leaves set value "large"
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
