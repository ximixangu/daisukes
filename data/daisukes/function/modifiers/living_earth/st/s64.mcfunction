$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", hydration: "0", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[hydration=1] run data modify storage daisukes:earth s.Properties.hydration set value "1"
$execute if block ~ ~ ~ $(name)[hydration=2] run data modify storage daisukes:earth s.Properties.hydration set value "2"
$execute if block ~ ~ ~ $(name)[hydration=3] run data modify storage daisukes:earth s.Properties.hydration set value "3"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
