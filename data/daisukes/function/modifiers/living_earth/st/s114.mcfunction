$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {east: "false", north: "false", south: "false", up: "false", west: "false"}}
$execute if block ~ ~ ~ $(name)[east=true] run data modify storage daisukes:earth s.Properties.east set value "true"
$execute if block ~ ~ ~ $(name)[north=true] run data modify storage daisukes:earth s.Properties.north set value "true"
$execute if block ~ ~ ~ $(name)[south=true] run data modify storage daisukes:earth s.Properties.south set value "true"
$execute if block ~ ~ ~ $(name)[up=true] run data modify storage daisukes:earth s.Properties.up set value "true"
$execute if block ~ ~ ~ $(name)[west=true] run data modify storage daisukes:earth s.Properties.west set value "true"
