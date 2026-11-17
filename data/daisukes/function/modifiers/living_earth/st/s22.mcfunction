$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", open: "false"}}
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=up] run data modify storage daisukes:earth s.Properties.facing set value "up"
$execute if block ~ ~ ~ $(name)[facing=down] run data modify storage daisukes:earth s.Properties.facing set value "down"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
