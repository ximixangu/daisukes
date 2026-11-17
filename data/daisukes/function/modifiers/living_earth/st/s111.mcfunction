$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {attached: "false", facing: "north", powered: "false"}}
$execute if block ~ ~ ~ $(name)[attached=true] run data modify storage daisukes:earth s.Properties.attached set value "true"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
