$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", type: "single", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[type=left] run data modify storage daisukes:earth s.Properties.type set value "left"
$execute if block ~ ~ ~ $(name)[type=right] run data modify storage daisukes:earth s.Properties.type set value "right"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
