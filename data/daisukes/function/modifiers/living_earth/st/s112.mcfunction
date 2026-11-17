$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {eggs: "1", hatch: "0"}}
$execute if block ~ ~ ~ $(name)[eggs=2] run data modify storage daisukes:earth s.Properties.eggs set value "2"
$execute if block ~ ~ ~ $(name)[eggs=3] run data modify storage daisukes:earth s.Properties.eggs set value "3"
$execute if block ~ ~ ~ $(name)[eggs=4] run data modify storage daisukes:earth s.Properties.eggs set value "4"
$execute if block ~ ~ ~ $(name)[hatch=1] run data modify storage daisukes:earth s.Properties.hatch set value "1"
$execute if block ~ ~ ~ $(name)[hatch=2] run data modify storage daisukes:earth s.Properties.hatch set value "2"
