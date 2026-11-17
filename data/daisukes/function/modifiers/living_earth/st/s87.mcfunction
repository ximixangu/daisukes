$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", short: "false", type: "normal"}}
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=up] run data modify storage daisukes:earth s.Properties.facing set value "up"
$execute if block ~ ~ ~ $(name)[facing=down] run data modify storage daisukes:earth s.Properties.facing set value "down"
$execute if block ~ ~ ~ $(name)[short=true] run data modify storage daisukes:earth s.Properties.short set value "true"
$execute if block ~ ~ ~ $(name)[type=sticky] run data modify storage daisukes:earth s.Properties.type set value "sticky"
