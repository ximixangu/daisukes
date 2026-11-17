$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {enabled: "true", facing: "down"}}
$execute if block ~ ~ ~ $(name)[enabled=false] run data modify storage daisukes:earth s.Properties.enabled set value "false"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
