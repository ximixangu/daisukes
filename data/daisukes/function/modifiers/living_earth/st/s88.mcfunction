$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {age: "0", half: "lower"}}
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
$execute if block ~ ~ ~ $(name)[age=4] run data modify storage daisukes:earth s.Properties.age set value "4"
$execute if block ~ ~ ~ $(name)[half=upper] run data modify storage daisukes:earth s.Properties.half set value "upper"
