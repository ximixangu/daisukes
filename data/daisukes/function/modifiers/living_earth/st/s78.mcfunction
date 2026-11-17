$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {age: "0", hanging: "false", stage: "0", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
$execute if block ~ ~ ~ $(name)[age=4] run data modify storage daisukes:earth s.Properties.age set value "4"
$execute if block ~ ~ ~ $(name)[hanging=true] run data modify storage daisukes:earth s.Properties.hanging set value "true"
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
