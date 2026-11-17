$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", waterlogged: "true"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
