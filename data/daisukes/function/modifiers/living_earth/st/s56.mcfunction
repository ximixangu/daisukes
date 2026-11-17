$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {hanging: "false", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[hanging=true] run data modify storage daisukes:earth s.Properties.hanging set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
