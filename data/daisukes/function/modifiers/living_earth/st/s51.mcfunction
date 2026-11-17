$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", mode: "compare", powered: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[mode=subtract] run data modify storage daisukes:earth s.Properties.mode set value "subtract"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
