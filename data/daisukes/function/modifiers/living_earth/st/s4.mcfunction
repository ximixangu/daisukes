$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {layers: "1"}}
$execute if block ~ ~ ~ $(name)[layers=2] run data modify storage daisukes:earth s.Properties.layers set value "2"
$execute if block ~ ~ ~ $(name)[layers=3] run data modify storage daisukes:earth s.Properties.layers set value "3"
$execute if block ~ ~ ~ $(name)[layers=4] run data modify storage daisukes:earth s.Properties.layers set value "4"
$execute if block ~ ~ ~ $(name)[layers=5] run data modify storage daisukes:earth s.Properties.layers set value "5"
$execute if block ~ ~ ~ $(name)[layers=6] run data modify storage daisukes:earth s.Properties.layers set value "6"
$execute if block ~ ~ ~ $(name)[layers=7] run data modify storage daisukes:earth s.Properties.layers set value "7"
$execute if block ~ ~ ~ $(name)[layers=8] run data modify storage daisukes:earth s.Properties.layers set value "8"
