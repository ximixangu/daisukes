$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", lit: "true", signal_fire: "false", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[lit=false] run data modify storage daisukes:earth s.Properties.lit set value "false"
$execute if block ~ ~ ~ $(name)[signal_fire=true] run data modify storage daisukes:earth s.Properties.signal_fire set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
