$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "south", powered: "false"}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=up] run data modify storage daisukes:earth s.Properties.facing set value "up"
$execute if block ~ ~ ~ $(name)[facing=down] run data modify storage daisukes:earth s.Properties.facing set value "down"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
