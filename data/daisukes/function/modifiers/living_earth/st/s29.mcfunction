$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", occupied: "false", part: "foot"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[occupied=true] run data modify storage daisukes:earth s.Properties.occupied set value "true"
$execute if block ~ ~ ~ $(name)[part=head] run data modify storage daisukes:earth s.Properties.part set value "head"
