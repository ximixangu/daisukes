$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {down: "true", east: "true", north: "true", south: "true", up: "true", west: "true"}}
$execute if block ~ ~ ~ $(name)[down=false] run data modify storage daisukes:earth s.Properties.down set value "false"
$execute if block ~ ~ ~ $(name)[east=false] run data modify storage daisukes:earth s.Properties.east set value "false"
$execute if block ~ ~ ~ $(name)[north=false] run data modify storage daisukes:earth s.Properties.north set value "false"
$execute if block ~ ~ ~ $(name)[south=false] run data modify storage daisukes:earth s.Properties.south set value "false"
$execute if block ~ ~ ~ $(name)[up=false] run data modify storage daisukes:earth s.Properties.up set value "false"
$execute if block ~ ~ ~ $(name)[west=false] run data modify storage daisukes:earth s.Properties.west set value "false"
