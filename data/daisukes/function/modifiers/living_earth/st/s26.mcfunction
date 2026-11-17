$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {attachment: "floor", facing: "north", powered: "false"}}
$execute if block ~ ~ ~ $(name)[attachment=ceiling] run data modify storage daisukes:earth s.Properties.attachment set value "ceiling"
$execute if block ~ ~ ~ $(name)[attachment=single_wall] run data modify storage daisukes:earth s.Properties.attachment set value "single_wall"
$execute if block ~ ~ ~ $(name)[attachment=double_wall] run data modify storage daisukes:earth s.Properties.attachment set value "double_wall"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
