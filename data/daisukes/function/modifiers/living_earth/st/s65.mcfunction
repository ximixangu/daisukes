$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {eye: "false", facing: "north"}}
$execute if block ~ ~ ~ $(name)[eye=true] run data modify storage daisukes:earth s.Properties.eye set value "true"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
