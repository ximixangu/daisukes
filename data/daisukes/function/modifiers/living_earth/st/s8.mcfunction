$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", in_wall: "false", open: "false", powered: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[in_wall=true] run data modify storage daisukes:earth s.Properties.in_wall set value "true"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
