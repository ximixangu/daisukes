$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {facing: "north", powered: "false", side_chain: "unconnected", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[side_chain=right] run data modify storage daisukes:earth s.Properties.side_chain set value "right"
$execute if block ~ ~ ~ $(name)[side_chain=center] run data modify storage daisukes:earth s.Properties.side_chain set value "center"
$execute if block ~ ~ ~ $(name)[side_chain=left] run data modify storage daisukes:earth s.Properties.side_chain set value "left"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
