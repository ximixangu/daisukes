$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {attached: "false", disarmed: "false", east: "false", north: "false", powered: "false", south: "false", west: "false"}}
$execute if block ~ ~ ~ $(name)[attached=true] run data modify storage daisukes:earth s.Properties.attached set value "true"
$execute if block ~ ~ ~ $(name)[disarmed=true] run data modify storage daisukes:earth s.Properties.disarmed set value "true"
$execute if block ~ ~ ~ $(name)[east=true] run data modify storage daisukes:earth s.Properties.east set value "true"
$execute if block ~ ~ ~ $(name)[north=true] run data modify storage daisukes:earth s.Properties.north set value "true"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[south=true] run data modify storage daisukes:earth s.Properties.south set value "true"
$execute if block ~ ~ ~ $(name)[west=true] run data modify storage daisukes:earth s.Properties.west set value "true"
