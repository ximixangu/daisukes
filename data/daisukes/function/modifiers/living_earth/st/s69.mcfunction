$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {face: "wall", facing: "north"}}
$execute if block ~ ~ ~ $(name)[face=floor] run data modify storage daisukes:earth s.Properties.face set value "floor"
$execute if block ~ ~ ~ $(name)[face=ceiling] run data modify storage daisukes:earth s.Properties.face set value "ceiling"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
