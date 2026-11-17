$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {type: "bottom", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[type=top] run data modify storage daisukes:earth s.Properties.type set value "top"
$execute if block ~ ~ ~ $(name)[type=double] run data modify storage daisukes:earth s.Properties.type set value "double"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
