$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
