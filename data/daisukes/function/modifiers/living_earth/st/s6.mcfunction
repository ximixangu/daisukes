$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[half=upper] run data modify storage daisukes:earth s.Properties.half set value "upper"
$execute if block ~ ~ ~ $(name)[hinge=right] run data modify storage daisukes:earth s.Properties.hinge set value "right"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
