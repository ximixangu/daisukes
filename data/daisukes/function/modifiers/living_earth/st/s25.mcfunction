$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {age: "0"}}
$execute if block ~ ~ ~ $(name)[age=1] run data modify storage daisukes:earth s.Properties.age set value "1"
$execute if block ~ ~ ~ $(name)[age=2] run data modify storage daisukes:earth s.Properties.age set value "2"
$execute if block ~ ~ ~ $(name)[age=3] run data modify storage daisukes:earth s.Properties.age set value "3"
