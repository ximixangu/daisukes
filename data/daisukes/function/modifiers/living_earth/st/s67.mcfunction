$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {moisture: "0"}}
$execute if block ~ ~ ~ $(name)[moisture=1] run data modify storage daisukes:earth s.Properties.moisture set value "1"
$execute if block ~ ~ ~ $(name)[moisture=2] run data modify storage daisukes:earth s.Properties.moisture set value "2"
$execute if block ~ ~ ~ $(name)[moisture=3] run data modify storage daisukes:earth s.Properties.moisture set value "3"
$execute if block ~ ~ ~ $(name)[moisture=4] run data modify storage daisukes:earth s.Properties.moisture set value "4"
$execute if block ~ ~ ~ $(name)[moisture=5] run data modify storage daisukes:earth s.Properties.moisture set value "5"
$execute if block ~ ~ ~ $(name)[moisture=6] run data modify storage daisukes:earth s.Properties.moisture set value "6"
$execute if block ~ ~ ~ $(name)[moisture=7] run data modify storage daisukes:earth s.Properties.moisture set value "7"
